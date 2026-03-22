package io.bidmachine.analytics.internal;

import android.content.Context;
import io.bidmachine.analytics.ReaderConfig;
import java.io.File;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* renamed from: io.bidmachine.analytics.internal.v  reason: case insensitive filesystem */
/* loaded from: classes7.dex */
public final class C3326v extends AbstractC3309d {

    /* renamed from: h  reason: collision with root package name */
    public static final a f54337h = new a(null);

    /* renamed from: g  reason: collision with root package name */
    private final String f54338g = "aexs";

    /* renamed from: io.bidmachine.analytics.internal.v$a */
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3315j
    public String a() {
        return this.f54338g;
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3309d
    public File a(ReaderConfig.Rule rule) {
        return new File(s0.b(rule.getPath()));
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3315j
    public void d(Context context) {
    }
}
