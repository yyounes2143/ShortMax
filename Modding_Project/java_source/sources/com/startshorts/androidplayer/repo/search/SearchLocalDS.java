package com.startshorts.androidplayer.repo.search;

import com.startshorts.androidplayer.bean.search.SearchRankingResultV2;
import gt.e;
import gt.q0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: SearchLocalDS.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SearchLocalDS {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f44553b = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private SearchRankingResultV2 f44554a;

    /* compiled from: SearchLocalDS.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Nullable
    public final Object a(@NotNull String str, @NotNull c<? super Unit> cVar) {
        Object g10 = e.g(q0.b(), new SearchLocalDS$addKeyword$2(str, null), cVar);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }

    @Nullable
    public final Object b(@NotNull c<? super Unit> cVar) {
        Object g10 = e.g(q0.b(), new SearchLocalDS$clearKeywords$2(null), cVar);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }

    public final void c() {
        this.f44554a = null;
    }

    @Nullable
    public final Object d(@NotNull c<? super List<String>> cVar) {
        return e.g(q0.b(), new SearchLocalDS$fetchKeywords$2(null), cVar);
    }

    @Nullable
    public final SearchRankingResultV2 e() {
        return this.f44554a;
    }

    public final void f(@NotNull SearchRankingResultV2 result) {
        Intrinsics.checkNotNullParameter(result, "result");
        this.f44554a = result;
    }
}
