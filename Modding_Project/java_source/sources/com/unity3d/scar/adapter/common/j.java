package com.unity3d.scar.adapter.common;

import android.app.Activity;
import android.content.Context;
import com.unity3d.scar.adapter.common.scarads.UnityAdFormat;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: ScarAdapterBase.java */
/* loaded from: classes7.dex */
public abstract class j implements e {

    /* renamed from: a  reason: collision with root package name */
    protected ol.c f49505a;

    /* renamed from: b  reason: collision with root package name */
    protected Map<String, nl.a> f49506b = new ConcurrentHashMap();

    /* renamed from: c  reason: collision with root package name */
    protected nl.a f49507c;

    /* renamed from: d  reason: collision with root package name */
    protected c<l> f49508d;

    /* compiled from: ScarAdapterBase.java */
    /* loaded from: classes7.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f49509a;

        a(Activity activity) {
            this.f49509a = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            j.this.f49507c.a(this.f49509a);
        }
    }

    public j(c<l> cVar) {
        this.f49508d = cVar;
    }

    @Override // com.unity3d.scar.adapter.common.e
    public void a(Context context, String str, UnityAdFormat unityAdFormat, ol.b bVar) {
        this.f49505a.a(context, str, unityAdFormat, bVar);
    }

    @Override // com.unity3d.scar.adapter.common.e
    public void b(Context context, boolean z10, ol.b bVar) {
        this.f49505a.b(context, z10, bVar);
    }

    @Override // com.unity3d.scar.adapter.common.e
    public void c(Context context, List<UnityAdFormat> list, ol.b bVar) {
        this.f49505a.c(context, list, bVar);
    }

    @Override // com.unity3d.scar.adapter.common.e
    public void d(Activity activity, String str, String str2) {
        nl.a aVar = this.f49506b.get(str2);
        if (aVar == null) {
            c<l> cVar = this.f49508d;
            cVar.handleError(b.f(str2, str, "Could not find ad for placement '" + str2 + "'."));
            return;
        }
        this.f49507c = aVar;
        k.a(new a(activity));
    }
}
