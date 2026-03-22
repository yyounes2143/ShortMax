package com.facebook.bolts;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AggregateException.kt */
@Metadata
/* loaded from: classes3.dex */
public final class AggregateException extends Exception {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f15218b = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final List<Throwable> f15219a;

    /* compiled from: AggregateException.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace(@NotNull PrintStream err) {
        Intrinsics.checkNotNullParameter(err, "err");
        super.printStackTrace(err);
        int i10 = -1;
        for (Throwable th2 : this.f15219a) {
            err.append("\n");
            err.append("  Inner throwable #");
            i10++;
            err.append((CharSequence) String.valueOf(i10));
            err.append(": ");
            if (th2 != null) {
                th2.printStackTrace(err);
            }
            err.append("\n");
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace(@NotNull PrintWriter err) {
        Intrinsics.checkNotNullParameter(err, "err");
        super.printStackTrace(err);
        int i10 = -1;
        for (Throwable th2 : this.f15219a) {
            err.append("\n");
            err.append("  Inner throwable #");
            i10++;
            err.append((CharSequence) String.valueOf(i10));
            err.append(": ");
            if (th2 != null) {
                th2.printStackTrace(err);
            }
            err.append("\n");
        }
    }
}
