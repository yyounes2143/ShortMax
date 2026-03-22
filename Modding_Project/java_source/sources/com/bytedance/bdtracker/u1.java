package com.bytedance.bdtracker;

import android.accounts.Account;
import android.content.Context;
/* loaded from: classes3.dex */
public class u1 {

    /* renamed from: a  reason: collision with root package name */
    public volatile r4 f12439a;

    /* renamed from: b  reason: collision with root package name */
    public Account f12440b;

    /* renamed from: c  reason: collision with root package name */
    public t3 f12441c;

    public r4 a(d dVar, Context context, p1 p1Var) {
        if (this.f12439a == null) {
            synchronized (u1.class) {
                try {
                    if (this.f12439a == null) {
                        if (context != null) {
                            if (this.f12441c == null) {
                                this.f12441c = new t3(dVar, context);
                            }
                            if (this.f12439a == null) {
                                this.f12439a = new n4(dVar, context, p1Var, this.f12441c);
                                if (this.f12440b != null) {
                                    ((n4) this.f12439a).a(this.f12440b);
                                }
                            }
                        } else {
                            throw new IllegalArgumentException("context == null");
                        }
                    }
                } finally {
                }
            }
        }
        return this.f12439a;
    }
}
