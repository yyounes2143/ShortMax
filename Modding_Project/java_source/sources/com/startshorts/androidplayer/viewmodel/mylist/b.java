package com.startshorts.androidplayer.viewmodel.mylist;

import com.startshorts.androidplayer.bean.mylist.MyCollection;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CollectionViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class b {

    /* compiled from: CollectionViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends b {

        /* renamed from: a  reason: collision with root package name */
        private final int f48911a;

        public a(int i10) {
            super(null);
            this.f48911a = i10;
        }

        public final int a() {
            return this.f48911a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof a) && this.f48911a == ((a) obj).f48911a) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Integer.hashCode(this.f48911a);
        }

        @NotNull
        public String toString() {
            return "AddCollectionSuccess(shortsId=" + this.f48911a + ')';
        }
    }

    /* compiled from: CollectionViewModel.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.viewmodel.mylist.b$b  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0669b extends b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final List<Long> f48912a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0669b(@NotNull List<Long> ids) {
            super(null);
            Intrinsics.checkNotNullParameter(ids, "ids");
            this.f48912a = ids;
        }

        @NotNull
        public final List<Long> a() {
            return this.f48912a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof C0669b) && Intrinsics.areEqual(this.f48912a, ((C0669b) obj).f48912a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return this.f48912a.hashCode();
        }

        @NotNull
        public String toString() {
            return "CancelCollectionsSuccess(ids=" + this.f48912a + ')';
        }
    }

    /* compiled from: CollectionViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final List<MyCollection> f48913a;

        public c(@Nullable List<MyCollection> list) {
            super(null);
            this.f48913a = list;
        }

        @Nullable
        public final List<MyCollection> a() {
            return this.f48913a;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof c) && Intrinsics.areEqual(this.f48913a, ((c) obj).f48913a)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            List<MyCollection> list = this.f48913a;
            if (list == null) {
                return 0;
            }
            return list.hashCode();
        }

        @NotNull
        public String toString() {
            return "ShowCollections(list=" + this.f48913a + ')';
        }
    }

    public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private b() {
    }
}
