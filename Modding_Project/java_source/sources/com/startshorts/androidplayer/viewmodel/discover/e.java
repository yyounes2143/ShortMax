package com.startshorts.androidplayer.viewmodel.discover;

import com.startshorts.androidplayer.bean.discover.ModuleInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverMoreViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class e {

    /* compiled from: DiscoverMoreViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends e {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final ModuleInfo f48522a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final String f48523b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull ModuleInfo moduleInfo, @NotNull String from) {
            super(null);
            Intrinsics.checkNotNullParameter(moduleInfo, "moduleInfo");
            Intrinsics.checkNotNullParameter(from, "from");
            this.f48522a = moduleInfo;
            this.f48523b = from;
        }

        @NotNull
        public final String a() {
            return this.f48523b;
        }

        @NotNull
        public final ModuleInfo b() {
            return this.f48522a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (Intrinsics.areEqual(this.f48522a, aVar.f48522a) && Intrinsics.areEqual(this.f48523b, aVar.f48523b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.f48522a.hashCode() * 31) + this.f48523b.hashCode();
        }

        @NotNull
        public String toString() {
            return "LoadModules(moduleInfo=" + this.f48522a + ", from=" + this.f48523b + ')';
        }
    }

    public /* synthetic */ e(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private e() {
    }
}
