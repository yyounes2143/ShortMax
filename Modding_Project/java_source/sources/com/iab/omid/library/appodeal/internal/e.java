package com.iab.omid.library.appodeal.internal;

import android.view.View;
import androidx.annotation.Nullable;
import com.iab.omid.library.appodeal.adsession.FriendlyObstructionPurpose;
/* loaded from: classes5.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final com.iab.omid.library.appodeal.weakreference.a f22614a;

    /* renamed from: b  reason: collision with root package name */
    private final String f22615b;

    /* renamed from: c  reason: collision with root package name */
    private final FriendlyObstructionPurpose f22616c;

    /* renamed from: d  reason: collision with root package name */
    private final String f22617d;

    public e(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, @Nullable String str) {
        this.f22614a = new com.iab.omid.library.appodeal.weakreference.a(view);
        this.f22615b = view.getClass().getCanonicalName();
        this.f22616c = friendlyObstructionPurpose;
        this.f22617d = str;
    }

    public String a() {
        return this.f22617d;
    }

    public FriendlyObstructionPurpose b() {
        return this.f22616c;
    }

    public com.iab.omid.library.appodeal.weakreference.a c() {
        return this.f22614a;
    }

    public String d() {
        return this.f22615b;
    }
}
