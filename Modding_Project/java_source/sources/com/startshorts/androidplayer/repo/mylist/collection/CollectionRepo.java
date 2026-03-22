package com.startshorts.androidplayer.repo.mylist.collection;

import com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS;
import com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: CollectionRepo.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CollectionRepo {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final CollectionRepo f44246a = new CollectionRepo();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f44247b = c.b(new Function0() { // from class: ah.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            CollectionRemoteDS g10;
            g10 = CollectionRepo.g();
            return g10;
        }
    });

    private CollectionRepo() {
    }

    private final CollectionRemoteDS f() {
        return (CollectionRemoteDS) f44247b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CollectionRemoteDS g() {
        return new CollectionRemoteDS();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(@org.jetbrains.annotations.Nullable android.content.Context r9, int r10, int r11, int r12, int r13, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r14) {
        /*
            r8 = this;
            boolean r0 = r14 instanceof com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$addCollection$1
            if (r0 == 0) goto L14
            r0 = r14
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$addCollection$1 r0 = (com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$addCollection$1) r0
            int r1 = r0.f44250j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.f44250j = r1
        L12:
            r7 = r0
            goto L1a
        L14:
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$addCollection$1 r0 = new com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$addCollection$1
            r0.<init>(r8, r14)
            goto L12
        L1a:
            java.lang.Object r14 = r7.f44248h
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r7.f44250j
            r2 = 1
            if (r1 == 0) goto L39
            if (r1 != r2) goto L31
            kotlin.f.b(r14)
            kotlin.Result r14 = (kotlin.Result) r14
            java.lang.Object r9 = r14.n()
            goto L4e
        L31:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L39:
            kotlin.f.b(r14)
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS r1 = r8.f()
            r7.f44250j = r2
            r2 = r9
            r3 = r10
            r4 = r11
            r5 = r12
            r6 = r13
            java.lang.Object r9 = r1.a(r2, r3, r4, r5, r6, r7)
            if (r9 != r0) goto L4e
            return r0
        L4e:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo.b(android.content.Context, int, int, int, int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(@org.jetbrains.annotations.Nullable android.content.Context r8, int r9, int r10, int r11, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r12) {
        /*
            r7 = this;
            boolean r0 = r12 instanceof com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$cancelCollection$1
            if (r0 == 0) goto L14
            r0 = r12
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$cancelCollection$1 r0 = (com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$cancelCollection$1) r0
            int r1 = r0.f44253j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.f44253j = r1
        L12:
            r6 = r0
            goto L1a
        L14:
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$cancelCollection$1 r0 = new com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$cancelCollection$1
            r0.<init>(r7, r12)
            goto L12
        L1a:
            java.lang.Object r12 = r6.f44251h
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r6.f44253j
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
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS r1 = r7.f()
            r6.f44253j = r2
            r2 = r8
            r3 = r9
            r4 = r10
            r5 = r11
            java.lang.Object r8 = r1.b(r2, r3, r4, r5, r6)
            if (r8 != r0) goto L4d
            return r0
        L4d:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo.c(android.content.Context, int, int, int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(@org.jetbrains.annotations.Nullable android.content.Context r5, @org.jetbrains.annotations.NotNull java.lang.String r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$cancelCollections$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$cancelCollections$1 r0 = (com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$cancelCollections$1) r0
            int r1 = r0.f44256j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44256j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$cancelCollections$1 r0 = new com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$cancelCollections$1
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r7 = r0.f44254h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44256j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r5 = r7.n()
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.f.b(r7)
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS r7 = r4.f()
            r0.f44256j = r3
            java.lang.Object r5 = r7.c(r5, r6, r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo.d(android.content.Context, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(@org.jetbrains.annotations.Nullable android.content.Context r5, @org.jetbrains.annotations.NotNull com.startshorts.androidplayer.bean.mylist.CancelCollectBatchRequest r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$cancelCollections2$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$cancelCollections2$1 r0 = (com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$cancelCollections2$1) r0
            int r1 = r0.f44259j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44259j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$cancelCollections2$1 r0 = new com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$cancelCollections2$1
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r7 = r0.f44257h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44259j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r5 = r7.n()
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.f.b(r7)
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS r7 = r4.f()
            r0.f44259j = r3
            java.lang.Object r5 = r7.d(r5, r6, r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo.e(android.content.Context, com.startshorts.androidplayer.bean.mylist.CancelCollectBatchRequest, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object h(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.util.List<java.lang.Integer>>> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$queryCollectShowRedPointIds$1
            if (r0 == 0) goto L13
            r0 = r5
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$queryCollectShowRedPointIds$1 r0 = (com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$queryCollectShowRedPointIds$1) r0
            int r1 = r0.f44262j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44262j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$queryCollectShowRedPointIds$1 r0 = new com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$queryCollectShowRedPointIds$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f44260h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44262j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r5)
            kotlin.Result r5 = (kotlin.Result) r5
            java.lang.Object r5 = r5.n()
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L37:
            kotlin.f.b(r5)
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS r5 = r4.f()
            r0.f44262j = r3
            java.lang.Object r5 = r5.e(r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo.h(rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object i(long r9, int r11, int r12, @org.jetbrains.annotations.NotNull java.lang.String r13, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.util.List<com.startshorts.androidplayer.bean.mylist.MyCollection>>> r14) {
        /*
            r8 = this;
            boolean r0 = r14 instanceof com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$queryCollections$1
            if (r0 == 0) goto L14
            r0 = r14
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$queryCollections$1 r0 = (com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$queryCollections$1) r0
            int r1 = r0.f44265j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.f44265j = r1
        L12:
            r7 = r0
            goto L1a
        L14:
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$queryCollections$1 r0 = new com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$queryCollections$1
            r0.<init>(r8, r14)
            goto L12
        L1a:
            java.lang.Object r14 = r7.f44263h
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r7.f44265j
            r2 = 1
            if (r1 == 0) goto L39
            if (r1 != r2) goto L31
            kotlin.f.b(r14)
            kotlin.Result r14 = (kotlin.Result) r14
            java.lang.Object r9 = r14.n()
            goto L4d
        L31:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L39:
            kotlin.f.b(r14)
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS r1 = r8.f()
            r7.f44265j = r2
            r2 = r9
            r4 = r11
            r5 = r12
            r6 = r13
            java.lang.Object r9 = r1.f(r2, r4, r5, r6, r7)
            if (r9 != r0) goto L4d
            return r0
        L4d:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo.i(long, int, int, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003d  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object j(long r12, int r14, int r15, @org.jetbrains.annotations.NotNull java.lang.String r16, int r17, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.util.List<com.startshorts.androidplayer.bean.mylist.MyCollection>>> r18) {
        /*
            r11 = this;
            r0 = r18
            boolean r1 = r0 instanceof com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$queryCollectionsV2$1
            if (r1 == 0) goto L17
            r1 = r0
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$queryCollectionsV2$1 r1 = (com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$queryCollectionsV2$1) r1
            int r2 = r1.f44268j
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L17
            int r2 = r2 - r3
            r1.f44268j = r2
            r2 = r11
        L15:
            r10 = r1
            goto L1e
        L17:
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$queryCollectionsV2$1 r1 = new com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo$queryCollectionsV2$1
            r2 = r11
            r1.<init>(r11, r0)
            goto L15
        L1e:
            java.lang.Object r0 = r10.f44266h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r3 = r10.f44268j
            r4 = 1
            if (r3 == 0) goto L3d
            if (r3 != r4) goto L35
            kotlin.f.b(r0)
            kotlin.Result r0 = (kotlin.Result) r0
            java.lang.Object r0 = r0.n()
            goto L54
        L35:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L3d:
            kotlin.f.b(r0)
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS r3 = r11.f()
            r10.f44268j = r4
            r4 = r12
            r6 = r14
            r7 = r15
            r8 = r16
            r9 = r17
            java.lang.Object r0 = r3.g(r4, r6, r7, r8, r9, r10)
            if (r0 != r1) goto L54
            return r1
        L54:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.mylist.collection.CollectionRepo.j(long, int, int, java.lang.String, int, rs.c):java.lang.Object");
    }
}
