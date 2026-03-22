package com.google.android.exoplayer2;

import android.os.Bundle;
import com.google.android.exoplayer2.g;
import com.google.android.exoplayer2.o1;
/* compiled from: Rating.java */
/* loaded from: classes4.dex */
public abstract class o1 implements g {

    /* renamed from: a  reason: collision with root package name */
    public static final g.a<o1> f18136a = new g.a() { // from class: o5.n0
        @Override // com.google.android.exoplayer2.g.a
        public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
            o1 b10;
            b10 = o1.b(bundle);
            return b10;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static o1 b(Bundle bundle) {
        int i10 = bundle.getInt(c(0), -1);
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        return t1.f18473d.fromBundle(bundle);
                    }
                    throw new IllegalArgumentException("Unknown RatingType: " + i10);
                }
                return q1.f18163d.fromBundle(bundle);
            }
            return h1.f17703c.fromBundle(bundle);
        }
        return w0.f19318d.fromBundle(bundle);
    }

    private static String c(int i10) {
        return Integer.toString(i10, 36);
    }
}
