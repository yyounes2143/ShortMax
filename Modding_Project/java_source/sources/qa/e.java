package qa;

import android.text.TextUtils;
/* loaded from: classes5.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final String f65257a;

    /* renamed from: b  reason: collision with root package name */
    private final String f65258b;

    /* renamed from: c  reason: collision with root package name */
    private final String f65259c;

    /* renamed from: d  reason: collision with root package name */
    private final String f65260d;

    /* renamed from: e  reason: collision with root package name */
    private final String f65261e;

    /* renamed from: f  reason: collision with root package name */
    private final int f65262f;

    /* renamed from: g  reason: collision with root package name */
    private int f65263g;

    public e(String str, String str2, String str3, String str4, String str5, int i10) {
        this.f65263g = 0;
        this.f65257a = str;
        this.f65258b = str2;
        this.f65259c = str3;
        this.f65260d = str4;
        this.f65261e = str5;
        this.f65262f = i10;
        if (str != null) {
            this.f65263g = str.length() / 2;
        }
    }

    public boolean a() {
        if (TextUtils.isEmpty(this.f65257a) || TextUtils.isEmpty(this.f65258b) || TextUtils.isEmpty(this.f65259c) || TextUtils.isEmpty(this.f65260d) || this.f65257a.length() != this.f65258b.length() || this.f65258b.length() != this.f65259c.length() || this.f65259c.length() != this.f65263g * 2 || this.f65262f < 0 || TextUtils.isEmpty(this.f65261e)) {
            return false;
        }
        return true;
    }

    public String b() {
        return this.f65257a;
    }

    public String c() {
        return this.f65258b;
    }

    public String d() {
        return this.f65259c;
    }

    public String e() {
        return this.f65260d;
    }

    public String f() {
        return this.f65261e;
    }

    public int g() {
        return this.f65262f;
    }

    public int h() {
        return this.f65263g;
    }
}
