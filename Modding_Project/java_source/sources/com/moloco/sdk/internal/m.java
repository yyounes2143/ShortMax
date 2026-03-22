package com.moloco.sdk.internal;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public abstract class m {

    /* renamed from: a  reason: collision with root package name */
    public final int f32316a;

    /* renamed from: b  reason: collision with root package name */
    public final int f32317b;

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class a extends m {
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public static final a f32318c = new a();

        public a() {
            super(300, 250, null);
        }
    }

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class b extends m {
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public static final b f32319c = new b();

        public b() {
            super(320, 50, null);
        }
    }

    @StabilityInferred(parameters = 1)
    /* loaded from: classes6.dex */
    public static final class c extends m {
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public static final c f32320c = new c();

        public c() {
            super(728, 90, null);
        }
    }

    public /* synthetic */ m(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, i11);
    }

    public int a() {
        return this.f32317b;
    }

    public int b() {
        return this.f32316a;
    }

    public m(int i10, int i11) {
        this.f32316a = i10;
        this.f32317b = i11;
    }
}
