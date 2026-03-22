package com.startshorts.androidplayer.repo.mylist.collection;

import kotlin.Metadata;
/* compiled from: CollectionRemoteDS.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CollectionRemoteDS {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003b  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(@org.jetbrains.annotations.Nullable android.content.Context r13, int r14, int r15, int r16, int r17, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r18) {
        /*
            r12 = this;
            r0 = r18
            boolean r1 = r0 instanceof com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$addCollection$1
            if (r1 == 0) goto L16
            r1 = r0
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$addCollection$1 r1 = (com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$addCollection$1) r1
            int r2 = r1.f44202j
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L16
            int r2 = r2 - r3
            r1.f44202j = r2
            r2 = r12
            goto L1c
        L16:
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$addCollection$1 r1 = new com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$addCollection$1
            r2 = r12
            r1.<init>(r12, r0)
        L1c:
            java.lang.Object r0 = r1.f44200h
            java.lang.Object r3 = kotlin.coroutines.intrinsics.a.f()
            int r4 = r1.f44202j
            r5 = 1
            if (r4 == 0) goto L3b
            if (r4 != r5) goto L33
            kotlin.f.b(r0)
            kotlin.Result r0 = (kotlin.Result) r0
            java.lang.Object r0 = r0.n()
            goto L64
        L33:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L3b:
            kotlin.f.b(r0)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r0 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r0.<init>()
            r4 = 0
            r6 = r13
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r0 = r0.u(r13, r4)
            r6 = 0
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r0 = com.startshorts.androidplayer.manager.api.base.ApiBuilder.z(r0, r4, r5, r6)
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$addCollection$2 r4 = new com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$addCollection$2
            r11 = 0
            r6 = r4
            r7 = r14
            r8 = r15
            r9 = r16
            r10 = r17
            r6.<init>(r7, r8, r9, r10, r11)
            r1.f44202j = r5
            java.lang.Object r0 = r0.o(r4, r1)
            if (r0 != r3) goto L64
            return r3
        L64:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS.a(android.content.Context, int, int, int, int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(@org.jetbrains.annotations.Nullable android.content.Context r6, int r7, int r8, int r9, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r10) {
        /*
            r5 = this;
            boolean r0 = r10 instanceof com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$cancelCollection$1
            if (r0 == 0) goto L13
            r0 = r10
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$cancelCollection$1 r0 = (com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$cancelCollection$1) r0
            int r1 = r0.f44210j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44210j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$cancelCollection$1 r0 = new com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$cancelCollection$1
            r0.<init>(r5, r10)
        L18:
            java.lang.Object r10 = r0.f44208h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44210j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r10)
            kotlin.Result r10 = (kotlin.Result) r10
            java.lang.Object r6 = r10.n()
            goto L57
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L37:
            kotlin.f.b(r10)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r10 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r10.<init>()
            r2 = 0
            r4 = 0
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r10 = com.startshorts.androidplayer.manager.api.base.ApiBuilder.z(r10, r2, r3, r4)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r6 = r10.u(r6, r2)
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$cancelCollection$2 r10 = new com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$cancelCollection$2
            r10.<init>(r7, r8, r9, r4)
            r0.f44210j = r3
            java.lang.Object r6 = r6.o(r10, r0)
            if (r6 != r1) goto L57
            return r1
        L57:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS.b(android.content.Context, int, int, int, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(@org.jetbrains.annotations.Nullable android.content.Context r6, @org.jetbrains.annotations.NotNull java.lang.String r7, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$cancelCollections$1
            if (r0 == 0) goto L13
            r0 = r8
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$cancelCollections$1 r0 = (com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$cancelCollections$1) r0
            int r1 = r0.f44217j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44217j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$cancelCollections$1 r0 = new com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$cancelCollections$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.f44215h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44217j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r6 = r8.n()
            goto L57
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L37:
            kotlin.f.b(r8)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r8 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r8.<init>()
            r2 = 0
            r4 = 0
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r8 = com.startshorts.androidplayer.manager.api.base.ApiBuilder.z(r8, r2, r3, r4)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r6 = r8.u(r6, r2)
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$cancelCollections$2 r8 = new com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$cancelCollections$2
            r8.<init>(r7, r4)
            r0.f44217j = r3
            java.lang.Object r6 = r6.o(r8, r0)
            if (r6 != r1) goto L57
            return r1
        L57:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS.c(android.content.Context, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(@org.jetbrains.annotations.Nullable android.content.Context r6, @org.jetbrains.annotations.NotNull com.startshorts.androidplayer.bean.mylist.CancelCollectBatchRequest r7, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.lang.Object>> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$cancelCollections2$1
            if (r0 == 0) goto L13
            r0 = r8
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$cancelCollections2$1 r0 = (com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$cancelCollections2$1) r0
            int r1 = r0.f44222j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44222j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$cancelCollections2$1 r0 = new com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$cancelCollections2$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.f44220h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44222j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r6 = r8.n()
            goto L57
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L37:
            kotlin.f.b(r8)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r8 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r8.<init>()
            r2 = 0
            r4 = 0
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r8 = com.startshorts.androidplayer.manager.api.base.ApiBuilder.z(r8, r2, r3, r4)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r6 = r8.u(r6, r2)
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$cancelCollections2$2 r8 = new com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$cancelCollections2$2
            r8.<init>(r7, r4)
            r0.f44222j = r3
            java.lang.Object r6 = r6.o(r8, r0)
            if (r6 != r1) goto L57
            return r1
        L57:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS.d(android.content.Context, com.startshorts.androidplayer.bean.mylist.CancelCollectBatchRequest, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.util.List<java.lang.Integer>>> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$queryCollectShowRedPointIds$1
            if (r0 == 0) goto L13
            r0 = r6
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$queryCollectShowRedPointIds$1 r0 = (com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$queryCollectShowRedPointIds$1) r0
            int r1 = r0.f44227j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f44227j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$queryCollectShowRedPointIds$1 r0 = new com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$queryCollectShowRedPointIds$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.f44225h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f44227j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r6 = r6.n()
            goto L57
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L37:
            kotlin.f.b(r6)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r6 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r6.<init>()
            r2 = 0
            r4 = 0
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r6 = com.startshorts.androidplayer.manager.api.base.ApiBuilder.z(r6, r2, r3, r4)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r6 = r6.n()
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$queryCollectShowRedPointIds$2 r2 = new com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$queryCollectShowRedPointIds$2
            r2.<init>(r4)
            r0.f44227j = r3
            java.lang.Object r6 = r6.o(r2, r0)
            if (r6 != r1) goto L57
            return r1
        L57:
            boolean r0 = kotlin.Result.j(r6)
            if (r0 == 0) goto L66
            java.util.List r6 = (java.util.List) r6
            if (r6 != 0) goto L66
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
        L66:
            java.lang.Object r6 = kotlin.Result.d(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS.e(rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003b  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(long r14, int r16, int r17, @org.jetbrains.annotations.NotNull java.lang.String r18, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.util.List<com.startshorts.androidplayer.bean.mylist.MyCollection>>> r19) {
        /*
            r13 = this;
            r0 = r19
            boolean r1 = r0 instanceof com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$queryCollections$1
            if (r1 == 0) goto L16
            r1 = r0
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$queryCollections$1 r1 = (com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$queryCollections$1) r1
            int r2 = r1.f44231j
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L16
            int r2 = r2 - r3
            r1.f44231j = r2
            r2 = r13
            goto L1c
        L16:
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$queryCollections$1 r1 = new com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$queryCollections$1
            r2 = r13
            r1.<init>(r13, r0)
        L1c:
            java.lang.Object r0 = r1.f44229h
            java.lang.Object r3 = kotlin.coroutines.intrinsics.a.f()
            int r4 = r1.f44231j
            r5 = 1
            if (r4 == 0) goto L3b
            if (r4 != r5) goto L33
            kotlin.f.b(r0)
            kotlin.Result r0 = (kotlin.Result) r0
            java.lang.Object r0 = r0.n()
            goto L64
        L33:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L3b:
            kotlin.f.b(r0)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r0 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r0.<init>()
            r4 = 0
            r6 = 0
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r0 = com.startshorts.androidplayer.manager.api.base.ApiBuilder.z(r0, r4, r5, r6)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r0 = r0.n()
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$queryCollections$2 r4 = new com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$queryCollections$2
            r12 = 0
            r6 = r4
            r7 = r14
            r9 = r16
            r10 = r17
            r11 = r18
            r6.<init>(r7, r9, r10, r11, r12)
            r1.f44231j = r5
            java.lang.Object r0 = r0.o(r4, r1)
            if (r0 != r3) goto L64
            return r3
        L64:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS.f(long, int, int, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003b  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object g(long r15, int r17, int r18, @org.jetbrains.annotations.NotNull java.lang.String r19, int r20, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends java.util.List<com.startshorts.androidplayer.bean.mylist.MyCollection>>> r21) {
        /*
            r14 = this;
            r0 = r21
            boolean r1 = r0 instanceof com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$queryCollectionsV2$1
            if (r1 == 0) goto L16
            r1 = r0
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$queryCollectionsV2$1 r1 = (com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$queryCollectionsV2$1) r1
            int r2 = r1.f44239j
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L16
            int r2 = r2 - r3
            r1.f44239j = r2
            r2 = r14
            goto L1c
        L16:
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$queryCollectionsV2$1 r1 = new com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$queryCollectionsV2$1
            r2 = r14
            r1.<init>(r14, r0)
        L1c:
            java.lang.Object r0 = r1.f44237h
            java.lang.Object r3 = kotlin.coroutines.intrinsics.a.f()
            int r4 = r1.f44239j
            r5 = 1
            if (r4 == 0) goto L3b
            if (r4 != r5) goto L33
            kotlin.f.b(r0)
            kotlin.Result r0 = (kotlin.Result) r0
            java.lang.Object r0 = r0.n()
            goto L66
        L33:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L3b:
            kotlin.f.b(r0)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r0 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder
            r0.<init>()
            r4 = 0
            r6 = 0
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r0 = com.startshorts.androidplayer.manager.api.base.ApiBuilder.z(r0, r4, r5, r6)
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r0 = r0.n()
            com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$queryCollectionsV2$2 r4 = new com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS$queryCollectionsV2$2
            r13 = 0
            r6 = r4
            r7 = r15
            r9 = r17
            r10 = r18
            r11 = r19
            r12 = r20
            r6.<init>(r7, r9, r10, r11, r12, r13)
            r1.f44239j = r5
            java.lang.Object r0 = r0.o(r4, r1)
            if (r0 != r3) goto L66
            return r3
        L66:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.mylist.collection.CollectionRemoteDS.g(long, int, int, java.lang.String, int, rs.c):java.lang.Object");
    }
}
