package com.iab.omid.library.inmobi.internal;

import android.view.View;
import androidx.annotation.Nullable;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
/* loaded from: classes5.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final com.iab.omid.library.inmobi.weakreference.a f22879a;

    /* renamed from: b  reason: collision with root package name */
    private final String f22880b;

    /* renamed from: c  reason: collision with root package name */
    private final FriendlyObstructionPurpose f22881c;

    /* renamed from: d  reason: collision with root package name */
    private final String f22882d;

    public e(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, @Nullable String str) {
        this.f22879a = new com.iab.omid.library.inmobi.weakreference.a(view);
        this.f22880b = view.getClass().getCanonicalName();
        this.f22881c = friendlyObstructionPurpose;
        this.f22882d = str;
    }

    public String a() {
        return this.f22882d;
    }

    public FriendlyObstructionPurpose b() {
        return this.f22881c;
    }

    public com.iab.omid.library.inmobi.weakreference.a c() {
        return this.f22879a;
    }

    public String d() {
        return this.f22880b;
    }
}
