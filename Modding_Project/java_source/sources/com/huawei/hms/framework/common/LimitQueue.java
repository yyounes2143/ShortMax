package com.huawei.hms.framework.common;

import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.ConcurrentLinkedQueue;
/* loaded from: classes5.dex */
public class LimitQueue<E> extends ConcurrentLinkedQueue<E> {

    /* renamed from: a  reason: collision with root package name */
    private int f22131a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f22132b;

    public LimitQueue(int i10) {
        this.f22132b = false;
        this.f22131a = i10;
    }

    @Override // java.util.concurrent.ConcurrentLinkedQueue, java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection, java.util.Queue
    public boolean add(E e10) {
        if (this.f22132b) {
            super.remove(e10);
        }
        if (super.size() >= this.f22131a) {
            super.poll();
        }
        return super.add(e10);
    }

    @Override // java.util.concurrent.ConcurrentLinkedQueue, java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        if (collection.size() > this.f22131a) {
            return false;
        }
        if (this.f22132b) {
            super.removeAll(collection);
        }
        for (int size = (collection.size() + super.size()) - this.f22131a; size > 0; size--) {
            super.poll();
        }
        return super.addAll(collection);
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        super.clear();
    }

    public E get(int i10) {
        Iterator<E> it = iterator();
        E e10 = null;
        for (int i11 = 0; i11 <= i10 && it.hasNext(); i11++) {
            e10 = it.next();
        }
        return e10;
    }

    public int getLimit() {
        return this.f22131a;
    }

    @Override // java.util.concurrent.ConcurrentLinkedQueue, java.util.Queue
    public boolean offer(E e10) {
        if (this.f22132b) {
            super.remove(e10);
        }
        if (super.size() >= this.f22131a) {
            super.poll();
        }
        return super.offer(e10);
    }

    public E peekLast() {
        Iterator<E> it = iterator();
        E e10 = null;
        while (it.hasNext()) {
            e10 = it.next();
        }
        return e10;
    }

    @Override // java.util.concurrent.ConcurrentLinkedQueue, java.util.Queue
    public E poll() {
        return (E) super.poll();
    }

    @Override // java.util.AbstractQueue, java.util.Queue
    public E remove() {
        try {
            return (E) super.remove();
        } catch (NoSuchElementException unused) {
            Logger.w("LimitQueue", "remove failed, limitQueue is empty");
            return null;
        }
    }

    public LimitQueue(int i10, boolean z10) {
        this.f22131a = i10;
        this.f22132b = z10;
    }

    public LimitQueue(Collection<? extends E> collection, boolean z10) {
        this(collection.size(), z10);
        addAll(collection);
    }
}
