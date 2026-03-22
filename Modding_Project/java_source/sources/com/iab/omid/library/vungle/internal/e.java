package com.iab.omid.library.vungle.internal;

import android.view.View;
import androidx.annotation.Nullable;
import com.iab.omid.library.vungle.adsession.FriendlyObstructionPurpose;
/* loaded from: classes5.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final com.iab.omid.library.vungle.weakreference.a f23277a;

    /* renamed from: b  reason: collision with root package name */
    private final String f23278b;

    /* renamed from: c  reason: collision with root package name */
    private final FriendlyObstructionPurpose f23279c;

    /* renamed from: d  reason: collision with root package name */
    private final String f23280d;

    public e(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, @Nullable String str) {
        this.f23277a = new com.iab.omid.library.vungle.weakreference.a(view);
        this.f23278b = view.getClass().getCanonicalName();
        this.f23279c = friendlyObstructionPurpose;
        this.f23280d = str;
    }

    public String a() {
        return this.f23280d;
    }

    public FriendlyObstructionPurpose b() {
        return this.f23279c;
    }

    public com.iab.omid.library.vungle.weakreference.a c() {
        return this.f23277a;
    }

    public String d() {
        return this.f23278b;
    }
}
