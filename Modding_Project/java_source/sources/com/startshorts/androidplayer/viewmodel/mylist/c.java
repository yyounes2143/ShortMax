package com.startshorts.androidplayer.viewmodel.mylist;

import com.startshorts.androidplayer.bean.tab.MyListTab;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MyListViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class c {

    /* compiled from: MyListViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends c {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final List<MyListTab> f48914a;

        @NotNull
        public final List<MyListTab> a() {
            return this.f48914a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && Intrinsics.areEqual(this.f48914a, ((a) obj).f48914a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48914a.hashCode();
        }

        @NotNull
        public String toString() {
            return "ShowTabs(tabs=" + this.f48914a + ')';
        }
    }

    private c() {
    }
}
