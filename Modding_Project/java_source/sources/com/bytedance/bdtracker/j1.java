package com.bytedance.bdtracker;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
/* loaded from: classes3.dex */
public class j1 {

    /* renamed from: a  reason: collision with root package name */
    public final LinkedList<u3> f12098a = new LinkedList<>();

    /* renamed from: b  reason: collision with root package name */
    public final LinkedList<String> f12099b = new LinkedList<>();

    public int a(ArrayList<u3> arrayList) {
        int size;
        synchronized (this.f12098a) {
            size = this.f12098a.size();
            arrayList.addAll(this.f12098a);
            this.f12098a.clear();
        }
        return size;
    }

    public void a(u3 u3Var) {
        synchronized (this.f12098a) {
            try {
                if (this.f12098a.size() > 300) {
                    this.f12098a.poll();
                }
                this.f12098a.add(u3Var);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void a(String[] strArr) {
        synchronized (this.f12099b) {
            try {
                if (this.f12099b.size() > 300) {
                    this.f12099b.poll();
                }
                this.f12099b.addAll(Arrays.asList(strArr));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
