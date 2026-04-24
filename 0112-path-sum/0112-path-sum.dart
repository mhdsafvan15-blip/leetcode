/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
class Solution {
  bool hasPathSum(TreeNode? root, int targetSum) {
    if (root == null) return false;
    if (root.left == null && root.right == null) {
      return targetSum == root.val;
    }
    int remaining = targetSum - root.val;
return hasPathSum(root.left, remaining) ||
           hasPathSum(root.right, remaining);
  }
}