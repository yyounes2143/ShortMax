package com.iab.omid.library.bytedance2.internal;

import android.view.View;
import androidx.annotation.Nullable;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
/* loaded from: classes5.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final com.iab.omid.library.bytedance2.weakreference.a f22749a;

    /* renamed from: b  reason: collision with root package name */
    private final String f22750b;

    /* renamed from: c  reason: collision with root package name */
    private final FriendlyObstructionPurpose f22751c;

    /* renamed from: d  reason: collision with root package name */
    private final String f22752d;

    public e(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, @Nullable String str) {
        this.f22749a = new com.iab.omid.library.bytedance2.weakreference.a(view);
        this.f22750b = view.getClass().getCanonicalName();
        this.f22751c = friendlyObstructionPurpose;
        this.f22752d = str;
    }

    public String a() {
        return this.f22752d;
    }

    public FriendlyObstructionPurpose b() {
        return this.f22751c;
    }

    public com.iab.omid.library.bytedance2.weakreference.a c() {
        return this.f22749a;
    }

    public String d() {
        return this.f22750b;
    }
}
