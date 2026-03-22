package com.bytedance.bdtracker;

import android.content.Context;
import android.content.SharedPreferences;
/* loaded from: classes3.dex */
public class w4 {

    /* renamed from: a  reason: collision with root package name */
    public static j4<SharedPreferences> f12502a = new a();

    /* loaded from: classes3.dex */
    public static class a extends j4<SharedPreferences> {
        @Override // com.bytedance.bdtracker.j4
        public SharedPreferences a(Object[] objArr) {
            return g4.a((Context) objArr[0], "ug_install_settings_pref", 0);
        }
    }

    /* loaded from: classes3.dex */
    public static class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f12503a;

        public b(Context context) {
            this.f12503a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            w4.f12502a.b(this.f12503a).edit().putBoolean("_install_started_v2", true).apply();
        }
    }

    public static boolean a() {
        return true;
    }

    public static void a(Context context) {
        x.f12504a.submit(new b(context));
    }
}
