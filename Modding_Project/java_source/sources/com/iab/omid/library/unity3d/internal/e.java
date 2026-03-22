package com.iab.omid.library.unity3d.internal;

import android.view.View;
import androidx.annotation.Nullable;
import com.iab.omid.library.unity3d.adsession.FriendlyObstructionPurpose;
/* loaded from: classes5.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final com.iab.omid.library.unity3d.weakreference.a f23150a;

    /* renamed from: b  reason: collision with root package name */
    private final String f23151b;

    /* renamed from: c  reason: collision with root package name */
    private final FriendlyObstructionPurpose f23152c;

    /* renamed from: d  reason: collision with root package name */
    private final String f23153d;

    public e(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, @Nullable String str) {
        this.f23150a = new com.iab.omid.library.unity3d.weakreference.a(view);
        this.f23151b = view.getClass().getCanonicalName();
        this.f23152c = friendlyObstructionPurpose;
        this.f23153d = str;
    }

    public String a() {
        return this.f23153d;
    }

    public FriendlyObstructionPurpose b() {
        return this.f23152c;
    }

    public com.iab.omid.library.unity3d.weakreference.a c() {
        return this.f23150a;
    }

    public String d() {
        return this.f23151b;
    }
}
