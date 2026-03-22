package com.applovin.impl;

import android.view.View;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
/* loaded from: classes2.dex */
public class e4 {

    /* renamed from: a  reason: collision with root package name */
    private final View f7873a;

    /* renamed from: b  reason: collision with root package name */
    private final FriendlyObstructionPurpose f7874b;

    /* renamed from: c  reason: collision with root package name */
    private final String f7875c;

    public e4(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        this.f7873a = view;
        this.f7874b = friendlyObstructionPurpose;
        this.f7875c = str;
    }

    public String a() {
        return this.f7875c;
    }

    public FriendlyObstructionPurpose b() {
        return this.f7874b;
    }

    public View c() {
        return this.f7873a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        e4 e4Var = (e4) obj;
        View view = this.f7873a;
        if (view == null ? e4Var.f7873a != null : !view.equals(e4Var.f7873a)) {
            return false;
        }
        if (this.f7874b != e4Var.f7874b) {
            return false;
        }
        String str = this.f7875c;
        String str2 = e4Var.f7875c;
        if (str != null) {
            return str.equals(str2);
        }
        if (str2 == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11;
        View view = this.f7873a;
        int i12 = 0;
        if (view != null) {
            i10 = view.hashCode();
        } else {
            i10 = 0;
        }
        int i13 = i10 * 31;
        FriendlyObstructionPurpose friendlyObstructionPurpose = this.f7874b;
        if (friendlyObstructionPurpose != null) {
            i11 = friendlyObstructionPurpose.hashCode();
        } else {
            i11 = 0;
        }
        int i14 = (i13 + i11) * 31;
        String str = this.f7875c;
        if (str != null) {
            i12 = str.hashCode();
        }
        return i14 + i12;
    }
}
