package com.apm.insight.e;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.apm.insight.e;
/* compiled from: NpthDataManager.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile a f6869a;

    /* renamed from: b  reason: collision with root package name */
    private com.apm.insight.e.a.b f6870b;

    /* renamed from: c  reason: collision with root package name */
    private SQLiteDatabase f6871c;

    private a() {
    }

    public static a a() {
        if (f6869a == null) {
            synchronized (a.class) {
                try {
                    if (f6869a == null) {
                        f6869a = new a();
                    }
                } finally {
                }
            }
        }
        return f6869a;
    }

    private void b() {
        if (this.f6870b == null) {
            a(e.g());
        }
    }

    public final synchronized void a(Context context) {
        try {
            this.f6871c = new b(context).getWritableDatabase();
            this.f6870b = new com.apm.insight.e.a.b();
        }
    }

    public final synchronized void a(com.apm.insight.d.a aVar) {
        b();
        com.apm.insight.e.a.b bVar = this.f6870b;
        if (bVar != null) {
            bVar.a(this.f6871c, aVar);
        }
    }

    public final synchronized boolean a(String str) {
        b();
        com.apm.insight.e.a.b bVar = this.f6870b;
        if (bVar != null) {
            return bVar.a(this.f6871c, str);
        }
        return false;
    }
}
