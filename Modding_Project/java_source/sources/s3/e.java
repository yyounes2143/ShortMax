package s3;

import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import s3.e;
/* compiled from: ImageDecodeOptionsBuilder.java */
/* loaded from: classes3.dex */
public class e<T extends e> {

    /* renamed from: a  reason: collision with root package name */
    private int f66278a = 100;

    /* renamed from: b  reason: collision with root package name */
    private int f66279b = Integer.MAX_VALUE;

    /* renamed from: c  reason: collision with root package name */
    private boolean f66280c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f66281d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f66282e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f66283f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f66284g;

    /* renamed from: h  reason: collision with root package name */
    private Bitmap.Config f66285h;

    /* renamed from: i  reason: collision with root package name */
    private Bitmap.Config f66286i;

    /* renamed from: j  reason: collision with root package name */
    private w3.b f66287j;

    /* renamed from: k  reason: collision with root package name */
    private ColorSpace f66288k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f66289l;

    public e() {
        Bitmap.Config config = Bitmap.Config.ARGB_8888;
        this.f66285h = config;
        this.f66286i = config;
    }

    public d a() {
        return new d(this);
    }

    public Bitmap.Config b() {
        return this.f66286i;
    }

    public Bitmap.Config c() {
        return this.f66285h;
    }

    public h4.a d() {
        return null;
    }

    public ColorSpace e() {
        return this.f66288k;
    }

    public w3.b f() {
        return this.f66287j;
    }

    public boolean g() {
        return this.f66283f;
    }

    public boolean h() {
        return this.f66280c;
    }

    public boolean i() {
        return this.f66289l;
    }

    public boolean j() {
        return this.f66284g;
    }

    public int k() {
        return this.f66279b;
    }

    public int l() {
        return this.f66278a;
    }

    public boolean m() {
        return this.f66282e;
    }

    public boolean n() {
        return this.f66281d;
    }
}
