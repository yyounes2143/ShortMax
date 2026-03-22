package com.iab.omid.library.applovin.internal;

import android.view.View;
import androidx.annotation.Nullable;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
/* loaded from: classes5.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final com.iab.omid.library.applovin.weakreference.a f22478a;

    /* renamed from: b  reason: collision with root package name */
    private final String f22479b;

    /* renamed from: c  reason: collision with root package name */
    private final FriendlyObstructionPurpose f22480c;

    /* renamed from: d  reason: collision with root package name */
    private final String f22481d;

    public e(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, @Nullable String str) {
        this.f22478a = new com.iab.omid.library.applovin.weakreference.a(view);
        this.f22479b = view.getClass().getCanonicalName();
        this.f22480c = friendlyObstructionPurpose;
        this.f22481d = str;
    }

    public String a() {
        return this.f22481d;
    }

    public FriendlyObstructionPurpose b() {
        return this.f22480c;
    }

    public com.iab.omid.library.applovin.weakreference.a c() {
        return this.f22478a;
    }

    public String d() {
        return this.f22479b;
    }
}
