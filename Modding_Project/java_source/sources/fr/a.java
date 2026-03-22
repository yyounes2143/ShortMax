package fr;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: BMError.java */
/* loaded from: classes8.dex */
public class a {

    /* renamed from: e  reason: collision with root package name */
    public static final a f51909e = new a(100, "Can't connect to server");

    /* renamed from: f  reason: collision with root package name */
    public static final a f51910f = new a(102, "Timeout reached");

    /* renamed from: g  reason: collision with root package name */
    public static final a f51911g = new a(110, "Request contains bad syntax or cannot be fulfilled");

    /* renamed from: h  reason: collision with root package name */
    public static final a f51912h = new a(109, "Server failed to fulfil an apparently valid request");

    /* renamed from: i  reason: collision with root package name */
    public static final a f51913i = new a(107, "AdRequest expired, load new one please");

    /* renamed from: j  reason: collision with root package name */
    public static final a f51914j = new a(106, "AdRequest destroyed, create new one please");

    /* renamed from: k  reason: collision with root package name */
    public static final a f51915k = new a(107, "AdResponse expired, load new one please");

    /* renamed from: l  reason: collision with root package name */
    public static final a f51916l = new a(111, "AdResponse already was shown");

    /* renamed from: m  reason: collision with root package name */
    public static final a f51917m = new a(111, "Ads was already shown, load new one please");

    /* renamed from: n  reason: collision with root package name */
    public static final a f51918n = new a(107, "Ads was expired, load new one please");

    /* renamed from: o  reason: collision with root package name */
    public static final a f51919o = new a(106, "Ads destroyed, load new one please");

    /* renamed from: p  reason: collision with root package name */
    public static final a f51920p = new a(201, "Placeholder timeout error");

    /* renamed from: q  reason: collision with root package name */
    public static final a f51921q = new a(103, "No ads fill");

    /* renamed from: r  reason: collision with root package name */
    public static final a f51922r = i("Unknown error");

    /* renamed from: s  reason: collision with root package name */
    public static final a f51923s = new a(103, "No bid", false);

    /* renamed from: a  reason: collision with root package name */
    private final int f51924a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final String f51925b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f51926c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final a f51927d;

    public a(@NonNull a aVar, int i10, @Nullable String str) {
        this(aVar.e(), aVar.g(), aVar.j(), new a(i10, str));
    }

    public static a a(@NonNull String str) {
        return new a(200, str);
    }

    public static a b(@NonNull String str) {
        return a(str + " not found");
    }

    public static a c(@NonNull String str) {
        return a("Adapter SDK initialization error: " + str);
    }

    public static a d() {
        return a("Adapter SDK not initialized");
    }

    public static a h(@NonNull String str) {
        return new a(101, str);
    }

    public static a i(@NonNull String str) {
        return new a(108, str);
    }

    public static a k(@NonNull String str) {
        return new a(103, str + " not found");
    }

    public static a l(@NonNull String str, @Nullable Throwable th2) {
        a aVar = null;
        if (th2 != null) {
            try {
                StringBuilder sb2 = new StringBuilder(th2.getClass().getName());
                String message = th2.getMessage();
                if (!TextUtils.isEmpty(message)) {
                    sb2.append(": ");
                    sb2.append(message);
                }
                aVar = new a(-1, sb2.toString());
            } catch (Throwable unused) {
            }
        }
        return new a(108, str, true, aVar);
    }

    public int e() {
        return this.f51924a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f51924a != aVar.f51924a) {
            return false;
        }
        return this.f51925b.equals(aVar.f51925b);
    }

    @Nullable
    public a f() {
        return this.f51927d;
    }

    @NonNull
    public String g() {
        return this.f51925b;
    }

    public int hashCode() {
        return (this.f51924a * 31) + this.f51925b.hashCode();
    }

    public boolean j() {
        return this.f51926c;
    }

    @NonNull
    public String toString() {
        if (this.f51927d != null) {
            return "(" + this.f51924a + ") " + this.f51925b + " - (" + this.f51927d.e() + " - " + this.f51927d.g() + ")";
        }
        return "(" + this.f51924a + ") " + this.f51925b;
    }

    public a(int i10, @Nullable String str) {
        this(i10, str, true);
    }

    private a(int i10, @Nullable String str, boolean z10) {
        this(i10, str, z10, null);
    }

    private a(int i10, @Nullable String str, boolean z10, @Nullable a aVar) {
        this.f51924a = i10;
        this.f51925b = io.bidmachine.core.g.i(str, "Unknown error");
        this.f51926c = z10;
        this.f51927d = aVar;
    }
}
