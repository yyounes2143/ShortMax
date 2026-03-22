package com.iab.omid.library.mmadbridge.internal;

import android.view.View;
import androidx.annotation.Nullable;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;
/* loaded from: classes5.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final com.iab.omid.library.mmadbridge.weakreference.a f23014a;

    /* renamed from: b  reason: collision with root package name */
    private final String f23015b;

    /* renamed from: c  reason: collision with root package name */
    private final FriendlyObstructionPurpose f23016c;

    /* renamed from: d  reason: collision with root package name */
    private final String f23017d;

    public e(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, @Nullable String str) {
        this.f23014a = new com.iab.omid.library.mmadbridge.weakreference.a(view);
        this.f23015b = view.getClass().getCanonicalName();
        this.f23016c = friendlyObstructionPurpose;
        this.f23017d = str;
    }

    public String a() {
        return this.f23017d;
    }

    public FriendlyObstructionPurpose b() {
        return this.f23016c;
    }

    public com.iab.omid.library.mmadbridge.weakreference.a c() {
        return this.f23014a;
    }

    public String d() {
        return this.f23015b;
    }
}
