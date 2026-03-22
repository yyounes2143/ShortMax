package com.startshorts.androidplayer.viewmodel.tag;

import com.startshorts.androidplayer.bean.tab.TagFilterTab;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TagFilterViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class c {

    /* compiled from: TagFilterViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends c {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final List<TagFilterTab> f49465a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull List<TagFilterTab> tabs) {
            super(null);
            Intrinsics.checkNotNullParameter(tabs, "tabs");
            this.f49465a = tabs;
        }

        @NotNull
        public final List<TagFilterTab> a() {
            return this.f49465a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && Intrinsics.areEqual(this.f49465a, ((a) obj).f49465a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f49465a.hashCode();
        }

        @NotNull
        public String toString() {
            return "ShowTabs(tabs=" + this.f49465a + ')';
        }
    }

    public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private c() {
    }
}
