package com.google.firebase.abt.component;

import android.content.Context;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import java.util.HashMap;
import java.util.Map;
import l7.b;
/* compiled from: AbtComponent.java */
/* loaded from: classes5.dex */
public class a {
    @GuardedBy("this")

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, b> f20326a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Context f20327b;

    /* renamed from: c  reason: collision with root package name */
    private final w8.b<n7.a> f20328c;

    /* JADX INFO: Access modifiers changed from: protected */
    @VisibleForTesting(otherwise = 3)
    public a(Context context, w8.b<n7.a> bVar) {
        this.f20327b = context;
        this.f20328c = bVar;
    }

    @VisibleForTesting
    protected b a(String str) {
        return new b(this.f20327b, this.f20328c, str);
    }

    public synchronized b b(String str) {
        try {
            if (!this.f20326a.containsKey(str)) {
                this.f20326a.put(str, a(str));
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f20326a.get(str);
    }
}
