package com.startshorts.androidplayer.repo.tag;

import android.content.Context;
import com.startshorts.androidplayer.bean.tab.TagFilterTab;
import com.startshorts.androidplayer.repo.tag.TagRemoteDS;
import com.startshorts.androidplayer.repo.tag.TagRepo;
import java.util.List;
import jh.a;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: TagRepo.kt */
@Metadata
/* loaded from: classes7.dex */
public final class TagRepo {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final TagRepo f44631a = new TagRepo();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f44632b = c.b(new Function0() { // from class: jh.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            a f10;
            f10 = TagRepo.f();
            return f10;
        }
    });
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final i f44633c = c.b(new Function0() { // from class: jh.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            TagRemoteDS g10;
            g10 = TagRepo.g();
            return g10;
        }
    });

    private TagRepo() {
    }

    private final a c() {
        return (a) f44632b.getValue();
    }

    private final TagRemoteDS d() {
        return (TagRemoteDS) f44633c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a f() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TagRemoteDS g() {
        return new TagRemoteDS();
    }

    @NotNull
    public final List<TagFilterTab> e(@NotNull Context context, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        return c().a(context, i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object h(@org.jetbrains.annotations.Nullable java.lang.Long r8, int r9, int r10, int r11, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.tag.TagFilterShortsListResult>> r12) {
        /*
            r7 = this;
            boolean r0 = r12 instanceof com.startshorts.androidplayer.repo.tag.TagRepo$queryTagFilterEpisodeList$1
            if (r0 == 0) goto L14
            r0 = r12
            com.startshorts.androidplayer.repo.tag.TagRepo$queryTagFilterEpisodeList$1 r0 = (com.startshorts.androidplayer.repo.tag.TagRepo$queryTagFilterEpisodeList$1) r0
            int r1 = r0.f44636j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.f44636j = r1
        L12:
            r6 = r0
            goto L1a
        L14:
            com.startshorts.androidplayer.repo.tag.TagRepo$queryTagFilterEpisodeList$1 r0 = new com.startshorts.androidplayer.repo.tag.TagRepo$queryTagFilterEpisodeList$1
            r0.<init>(r7, r12)
            goto L12
        L1a:
            java.lang.Object r12 = r6.f44634h
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r6.f44636j
            r2 = 1
            if (r1 == 0) goto L39
            if (r1 != r2) goto L31
            kotlin.f.b(r12)
            kotlin.Result r12 = (kotlin.Result) r12
            java.lang.Object r8 = r12.n()
            goto L4d
        L31:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L39:
            kotlin.f.b(r12)
            com.startshorts.androidplayer.repo.tag.TagRemoteDS r1 = r7.d()
            r6.f44636j = r2
            r2 = r8
            r3 = r9
            r4 = r10
            r5 = r11
            java.lang.Object r8 = r1.a(r2, r3, r4, r5, r6)
            if (r8 != r0) goto L4d
            return r0
        L4d:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.tag.TagRepo.h(java.lang.Long, int, int, int, rs.c):java.lang.Object");
    }
}
