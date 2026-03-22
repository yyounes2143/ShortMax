package com.google.android.exoplayer2;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.g;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* compiled from: DeviceInfo.java */
/* loaded from: classes4.dex */
public final class j implements g {

    /* renamed from: d  reason: collision with root package name */
    public static final j f17714d = new j(0, 0, 0);

    /* renamed from: e  reason: collision with root package name */
    public static final g.a<j> f17715e = new g.a() { // from class: o5.o
        @Override // com.google.android.exoplayer2.g.a
        public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
            com.google.android.exoplayer2.j c10;
            c10 = com.google.android.exoplayer2.j.c(bundle);
            return c10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final int f17716a;

    /* renamed from: b  reason: collision with root package name */
    public final int f17717b;

    /* renamed from: c  reason: collision with root package name */
    public final int f17718c;

    public j(int i10, int i11, int i12) {
        this.f17716a = i10;
        this.f17717b = i11;
        this.f17718c = i12;
    }

    private static String b(int i10) {
        return Integer.toString(i10, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ j c(Bundle bundle) {
        return new j(bundle.getInt(b(0), 0), bundle.getInt(b(1), 0), bundle.getInt(b(2), 0));
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        if (this.f17716a == jVar.f17716a && this.f17717b == jVar.f17717b && this.f17718c == jVar.f17718c) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f17716a) * 31) + this.f17717b) * 31) + this.f17718c;
    }

    @Override // com.google.android.exoplayer2.g
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(b(0), this.f17716a);
        bundle.putInt(b(1), this.f17717b);
        bundle.putInt(b(2), this.f17718c);
        return bundle;
    }
}
