/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode(this.val, [this.next]);
 * }
 */

class Solution {
  ListNode? partition(ListNode? head, int x) {
    ListNode beforeHead = ListNode(0);
    ListNode afterHead = ListNode(0);

    ListNode? before = beforeHead;
    ListNode? after = afterHead;

    while (head != null) {
      if (head.val < x) {
        before!.next = head;
        before = before.next;
      } else {
        after!.next = head;
        after = after.next;
      }
      head = head.next;
    }

    after!.next = null;

    before!.next = afterHead.next;

    return beforeHead.next;
  }
}