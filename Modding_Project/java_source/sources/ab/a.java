package ab;

import android.content.Context;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import java.util.concurrent.Callable;
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    protected d f324a;

    /* renamed from: b  reason: collision with root package name */
    private final String f325b;

    /* renamed from: c  reason: collision with root package name */
    private final c f326c;

    /* renamed from: d  reason: collision with root package name */
    private final int f327d;

    /* renamed from: e  reason: collision with root package name */
    private final Context f328e;

    /* renamed from: f  reason: collision with root package name */
    private final String f329f;

    /* renamed from: g  reason: collision with root package name */
    private final GrsBaseInfo f330g;

    /* renamed from: h  reason: collision with root package name */
    private final ya.c f331h;

    public a(String str, int i10, c cVar, Context context, String str2, GrsBaseInfo grsBaseInfo, ya.c cVar2) {
        this.f325b = str;
        this.f326c = cVar;
        this.f327d = i10;
        this.f328e = context;
        this.f329f = str2;
        this.f330g = grsBaseInfo;
        this.f331h = cVar2;
    }

    public Context a() {
        return this.f328e;
    }

    public c b() {
        return this.f326c;
    }

    public String c() {
        return this.f325b;
    }

    public int d() {
        return this.f327d;
    }

    public String e() {
        return this.f329f;
    }

    public ya.c f() {
        return this.f331h;
    }

    public Callable<d> g() {
        return new f(this.f325b, this.f327d, this.f326c, this.f328e, this.f329f, this.f330g, this.f331h);
    }
}
