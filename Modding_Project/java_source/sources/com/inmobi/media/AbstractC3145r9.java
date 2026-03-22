package com.inmobi.media;

import android.content.Context;
import android.view.View;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.HashMap;
import java.util.LinkedList;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.r9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC3145r9 {

    /* renamed from: a  reason: collision with root package name */
    public final LinkedList f25237a = new LinkedList();

    /* renamed from: b  reason: collision with root package name */
    public int f25238b;

    /* renamed from: c  reason: collision with root package name */
    public int f25239c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ D9 f25240d;

    public AbstractC3145r9(D9 d92) {
        this.f25240d = d92;
    }

    public abstract View a(Context context);

    public void a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        HashMap hashMap = D9.f23586c;
        C3082n9.a(view);
        view.setOnClickListener(null);
        this.f25237a.add(view);
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        this.f25240d.f23591a++;
    }

    public final String toString() {
        return "Size:" + this.f25237a.size() + " Miss Count:" + this.f25238b + " Hit Count:" + this.f25239c;
    }

    public void a(View view, C2920d8 asset, AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(asset, "asset");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        view.setVisibility(asset.f24599v);
        view.setOnClickListener(null);
    }
}
