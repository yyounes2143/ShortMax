package oa;

import android.content.Context;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private String f63161a;

    /* renamed from: c  reason: collision with root package name */
    private InputStream f63163c;

    /* renamed from: b  reason: collision with root package name */
    private b f63162b = b.f63155b;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, String> f63164d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    private final List<ra.a> f63165e = new ArrayList();

    public d a(Context context) {
        return new qa.c(context, this.f63161a, this.f63162b, this.f63163c, this.f63164d, this.f63165e, null);
    }

    public e b(InputStream inputStream) {
        this.f63163c = inputStream;
        return this;
    }
}
