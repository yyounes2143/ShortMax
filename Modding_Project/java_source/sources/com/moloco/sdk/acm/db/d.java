package com.moloco.sdk.acm.db;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Transaction;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Dao
/* loaded from: classes6.dex */
public interface d {

    @SourceDebugExtension({"SMAP\nMetricsDAO.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MetricsDAO.kt\ncom/moloco/sdk/acm/db/MetricsDAO$DefaultImpls\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,73:1\n1557#2:74\n1628#2,3:75\n*S KotlinDebug\n*F\n+ 1 MetricsDAO.kt\ncom/moloco/sdk/acm/db/MetricsDAO$DefaultImpls\n*L\n56#1:74\n56#1:75,3\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class a {

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.acm.db.MetricsDAO$DefaultImpls", f = "MetricsDAO.kt", l = {58, 62}, m = "deleteAndReturnDeletedEvents")
        /* renamed from: com.moloco.sdk.acm.db.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0460a extends ContinuationImpl {

            /* renamed from: h  reason: collision with root package name */
            public Object f31849h;

            /* renamed from: i  reason: collision with root package name */
            public Object f31850i;

            /* renamed from: j  reason: collision with root package name */
            public Object f31851j;

            /* renamed from: k  reason: collision with root package name */
            public /* synthetic */ Object f31852k;

            /* renamed from: l  reason: collision with root package name */
            public int f31853l;

            public C0460a(rs.c<? super C0460a> cVar) {
                super(cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.f31852k = obj;
                this.f31853l |= Integer.MIN_VALUE;
                return a.a(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0049  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x005b  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x006d  */
        /* JADX WARN: Type inference failed for: r2v4, types: [java.util.List] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a3 -> B:32:0x00a5). Please submit an issue!!! */
        @androidx.room.Transaction
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.lang.Object a(@org.jetbrains.annotations.NotNull com.moloco.sdk.acm.db.d r9, @org.jetbrains.annotations.NotNull rs.c<? super java.util.List<com.moloco.sdk.acm.db.b>> r10) {
            /*
                boolean r0 = r10 instanceof com.moloco.sdk.acm.db.d.a.C0460a
                if (r0 == 0) goto L13
                r0 = r10
                com.moloco.sdk.acm.db.d$a$a r0 = (com.moloco.sdk.acm.db.d.a.C0460a) r0
                int r1 = r0.f31853l
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f31853l = r1
                goto L18
            L13:
                com.moloco.sdk.acm.db.d$a$a r0 = new com.moloco.sdk.acm.db.d$a$a
                r0.<init>(r10)
            L18:
                java.lang.Object r10 = r0.f31852k
                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                int r2 = r0.f31853l
                r3 = 2
                r4 = 1
                if (r2 == 0) goto L49
                if (r2 == r4) goto L38
                if (r2 != r3) goto L30
                java.lang.Object r9 = r0.f31849h
                java.util.List r9 = (java.util.List) r9
                kotlin.f.b(r10)
                goto L6c
            L30:
                java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
                r9.<init>(r10)
                throw r9
            L38:
                java.lang.Object r9 = r0.f31851j
                java.util.List r9 = (java.util.List) r9
                java.lang.Object r2 = r0.f31850i
                java.util.List r2 = (java.util.List) r2
                java.lang.Object r5 = r0.f31849h
                com.moloco.sdk.acm.db.d r5 = (com.moloco.sdk.acm.db.d) r5
                kotlin.f.b(r10)
                r10 = r2
                goto La5
            L49:
                kotlin.f.b(r10)
                java.util.ArrayList r10 = new java.util.ArrayList
                r10.<init>()
            L51:
                java.util.List r2 = r9.b()
                boolean r5 = r2.isEmpty()
                if (r5 == 0) goto L6d
                r0.f31849h = r10
                r2 = 0
                r0.f31850i = r2
                r0.f31851j = r2
                r0.f31853l = r3
                java.lang.Object r9 = r9.d(r0)
                if (r9 != r1) goto L6b
                return r1
            L6b:
                r9 = r10
            L6c:
                return r9
            L6d:
                java.util.ArrayList r5 = new java.util.ArrayList
                r6 = 10
                int r6 = kotlin.collections.CollectionsKt.z(r2, r6)
                r5.<init>(r6)
                java.util.Iterator r6 = r2.iterator()
            L7c:
                boolean r7 = r6.hasNext()
                if (r7 == 0) goto L94
                java.lang.Object r7 = r6.next()
                com.moloco.sdk.acm.db.b r7 = (com.moloco.sdk.acm.db.b) r7
                long r7 = r7.c()
                java.lang.Long r7 = kotlin.coroutines.jvm.internal.a.e(r7)
                r5.add(r7)
                goto L7c
            L94:
                r0.f31849h = r9
                r0.f31850i = r10
                r0.f31851j = r2
                r0.f31853l = r4
                java.lang.Object r5 = r9.c(r5, r0)
                if (r5 != r1) goto La3
                return r1
            La3:
                r5 = r9
                r9 = r2
            La5:
                r10.addAll(r9)
                r9 = r5
                goto L51
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.acm.db.d.a.a(com.moloco.sdk.acm.db.d, rs.c):java.lang.Object");
        }
    }

    @Transaction
    @Nullable
    Object a(@NotNull rs.c<? super List<b>> cVar);

    @Insert(onConflict = 1)
    long b(@NotNull b bVar);

    @Query("SELECT * FROM events LIMIT 900")
    @NotNull
    List<b> b();

    @Query("DELETE FROM events WHERE id IN (:ids)")
    @Nullable
    Object c(@NotNull List<Long> list, @NotNull rs.c<? super Unit> cVar);

    @Query("DELETE FROM sqlite_sequence WHERE name='events'")
    @Nullable
    Object d(@NotNull rs.c<? super Unit> cVar);
}
