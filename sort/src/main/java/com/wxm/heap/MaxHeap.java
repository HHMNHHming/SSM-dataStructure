package com.wxm.heap;

public class MaxHeap<T> {
    private T[] data;
    private int count;

    public MaxHeap(int capacity){
        data = (T[]) new Object[capacity];
        count=0;
    }
    public int size(){
        return count;
    }
    public boolean isEmpty(){
        return count==0;
    }

    public static void main(String[] args) {
        MaxHeap<Integer> maxHeap = new MaxHeap<Integer>(100);
        System.out.println(maxHeap.size());
    }
}
