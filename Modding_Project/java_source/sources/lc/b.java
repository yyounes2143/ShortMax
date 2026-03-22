package lc;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
/* compiled from: LogConfig.java */
/* loaded from: classes6.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private String f62132a;

    /* renamed from: b  reason: collision with root package name */
    private String f62133b;

    /* renamed from: c  reason: collision with root package name */
    private int f62134c;

    /* renamed from: d  reason: collision with root package name */
    private int f62135d;

    /* renamed from: e  reason: collision with root package name */
    private int f62136e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f62137f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f62138g;

    /* renamed from: h  reason: collision with root package name */
    private int f62139h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f62140i;

    /* compiled from: LogConfig.java */
    /* renamed from: lc.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static class C0864b {

        /* renamed from: a  reason: collision with root package name */
        private final Context f62141a;

        /* renamed from: c  reason: collision with root package name */
        private String f62143c;

        /* renamed from: b  reason: collision with root package name */
        private String f62142b = "";

        /* renamed from: d  reason: collision with root package name */
        private int f62144d = 100;

        /* renamed from: e  reason: collision with root package name */
        private int f62145e = 2;

        /* renamed from: f  reason: collision with root package name */
        public int f62146f = 604800;

        /* renamed from: g  reason: collision with root package name */
        private boolean f62147g = true;

        /* renamed from: h  reason: collision with root package name */
        private boolean f62148h = true;

        /* renamed from: i  reason: collision with root package name */
        private int f62149i = 2;

        /* renamed from: j  reason: collision with root package name */
        private final String f62150j = "Log";

        /* renamed from: k  reason: collision with root package name */
        private boolean f62151k = false;

        public C0864b(Context context) {
            this.f62141a = context;
            this.f62143c = context.getFilesDir().getAbsolutePath() + File.separator + "Log";
        }

        public b i() {
            if (TextUtils.isEmpty(this.f62143c)) {
                this.f62143c = new File(this.f62141a.getCacheDir(), "Log").getAbsolutePath();
            }
            return new b(this);
        }
    }

    private b(C0864b c0864b) {
        this.f62132a = "";
        this.f62134c = 100;
        this.f62135d = 2;
        this.f62136e = 604800;
        this.f62137f = true;
        this.f62138g = true;
        this.f62139h = 2;
        this.f62140i = false;
        this.f62132a = c0864b.f62142b;
        this.f62133b = c0864b.f62143c;
        this.f62134c = c0864b.f62144d;
        this.f62135d = c0864b.f62145e;
        this.f62136e = c0864b.f62146f;
        this.f62137f = c0864b.f62147g;
        this.f62138g = c0864b.f62148h;
        this.f62139h = c0864b.f62149i;
        this.f62140i = c0864b.f62151k;
    }
}
