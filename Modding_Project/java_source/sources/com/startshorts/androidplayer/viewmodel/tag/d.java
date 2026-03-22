package com.startshorts.androidplayer.viewmodel.tag;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TagFilterViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class d {

    /* compiled from: TagFilterViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Context f49466a;

        /* renamed from: b  reason: collision with root package name */
        private final int f49467b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull Context context, int i10) {
            super(null);
            Intrinsics.checkNotNullParameter(context, "context");
            this.f49466a = context;
            this.f49467b = i10;
        }

        @NotNull
        public final Context a() {
            return this.f49466a;
        }

        public final int b() {
            return this.f49467b;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (Intrinsics.areEqual(this.f49466a, aVar.f49466a) && this.f49467b == aVar.f49467b) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.f49466a.hashCode() * 31) + Integer.hashCode(this.f49467b);
        }

        @NotNull
        public String toString() {
            return "LoadTabs(context=" + this.f49466a + ", defaultIndex=" + this.f49467b + ')';
        }
    }

    public /* synthetic */ d(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private d() {
    }
}
