package com.unity3d.scar.adapter.common;

import android.app.Activity;
import android.content.Context;
import android.widget.RelativeLayout;
import com.unity3d.scar.adapter.common.scarads.UnityAdFormat;
import java.util.List;
/* compiled from: IScarAdapter.java */
/* loaded from: classes7.dex */
public interface e {
    void a(Context context, String str, UnityAdFormat unityAdFormat, ol.b bVar);

    void b(Context context, boolean z10, ol.b bVar);

    void c(Context context, List<UnityAdFormat> list, ol.b bVar);

    void d(Activity activity, String str, String str2);

    void e(Context context, nl.c cVar, g gVar);

    void f(Context context, RelativeLayout relativeLayout, nl.c cVar, int i10, int i11, f fVar);

    void g(Context context, nl.c cVar, h hVar);
}
