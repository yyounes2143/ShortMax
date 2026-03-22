package io.bidmachine.analytics.internal;

import android.content.Context;
import io.bidmachine.analytics.ReaderConfig;
import java.io.File;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* renamed from: io.bidmachine.analytics.internal.z  reason: case insensitive filesystem */
/* loaded from: classes7.dex */
public final class C3330z extends AbstractC3309d {

    /* renamed from: i  reason: collision with root package name */
    public static final a f54369i = new a(null);

    /* renamed from: g  reason: collision with root package name */
    private final File f54370g;

    /* renamed from: h  reason: collision with root package name */
    private final String f54371h = "aints";

    /* renamed from: io.bidmachine.analytics.internal.z$a */
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public C3330z(File file) {
        this.f54370g = file;
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3315j
    public String a() {
        return this.f54371h;
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3309d
    public File a(ReaderConfig.Rule rule) {
        return new File(this.f54370g, s0.b(rule.getPath()));
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3315j
    public void d(Context context) {
    }
}
