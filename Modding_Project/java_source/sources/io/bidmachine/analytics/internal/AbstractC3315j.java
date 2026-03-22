package io.bidmachine.analytics.internal;

import android.content.Context;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* renamed from: io.bidmachine.analytics.internal.j  reason: case insensitive filesystem */
/* loaded from: classes7.dex */
public abstract class AbstractC3315j {

    /* renamed from: c  reason: collision with root package name */
    public static final a f54134c = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final Object f54135a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private b f54136b = b.EMPTY;

    /* renamed from: io.bidmachine.analytics.internal.j$a */
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* renamed from: io.bidmachine.analytics.internal.j$b */
    /* loaded from: classes7.dex */
    public enum b {
        EMPTY,
        CREATED,
        ENABLED,
        DISABLED,
        DESTROYED
    }

    public abstract String a();

    public final void a(Context context) {
        synchronized (this.f54135a) {
            if (this.f54136b != b.EMPTY) {
                return;
            }
            d(context);
            this.f54136b = b.CREATED;
            Unit unit = Unit.f60915a;
        }
    }

    public final void b(Context context) {
        synchronized (this.f54135a) {
            if (this.f54136b != b.ENABLED) {
                return;
            }
            Result.a aVar = Result.f60901b;
            e(context);
            Result.d(Unit.f60915a);
            this.f54136b = b.DISABLED;
            Unit unit = Unit.f60915a;
        }
    }

    public abstract void b(Object obj);

    public final void c(Context context) {
        synchronized (this.f54135a) {
            if (this.f54136b != b.DISABLED) {
                return;
            }
            Result.a aVar = Result.f60901b;
            f(context);
            Result.d(Unit.f60915a);
            this.f54136b = b.ENABLED;
            Unit unit = Unit.f60915a;
        }
    }

    public abstract void d(Context context);

    public abstract void e(Context context);

    public abstract void f(Context context);

    public final void a(Object obj) {
        synchronized (this.f54135a) {
            b bVar = this.f54136b;
            if (bVar == b.CREATED || bVar == b.DISABLED) {
                b(obj);
                this.f54136b = b.DISABLED;
                Unit unit = Unit.f60915a;
            }
        }
    }
}
