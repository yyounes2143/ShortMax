package com.unity3d.services.core.network.domain;

import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.j;
import ms.k;
import org.jetbrains.annotations.NotNull;
import ps.a;
import ws.f;
/* compiled from: CleanupDirectory.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCleanupDirectory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CleanupDirectory.kt\ncom/unity3d/services/core/network/domain/CleanupDirectory\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,39:1\n1#2:40\n2689#3,10:41\n603#3:53\n179#3,2:54\n1855#4,2:51\n1855#4,2:56\n*S KotlinDebug\n*F\n+ 1 CleanupDirectory.kt\ncom/unity3d/services/core/network/domain/CleanupDirectory\n*L\n15#1:41,10\n28#1:53\n32#1:54,2\n21#1:51,2\n36#1:56,2\n*E\n"})
/* loaded from: classes7.dex */
public final class CleanupDirectory {
    public final void invoke(@NotNull File directory, int i10, long j10) {
        List list;
        Intrinsics.checkNotNullParameter(directory, "directory");
        if (directory.exists() && directory.isDirectory()) {
            Object obj = null;
            Sequence<File> t10 = j.t(f.s(directory, null, 1, null), CleanupDirectory$invoke$cachedFiles$1.INSTANCE);
            long j11 = 0;
            long j12 = 0;
            for (File file : t10) {
                j12 += file.length();
            }
            long currentTimeMillis = System.currentTimeMillis();
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : t10) {
                if (((File) obj2).lastModified() + j10 < currentTimeMillis) {
                    arrayList.add(obj2);
                } else {
                    arrayList2.add(obj2);
                }
            }
            Pair pair = new Pair(arrayList, arrayList2);
            List<File> list2 = (List) pair.d();
            List<File> list3 = (List) pair.b();
            for (File file2 : list3) {
                j11 += file2.length();
            }
            long j13 = j12 - j11;
            for (File file3 : list3) {
                file3.delete();
            }
            long j14 = 1048576 * i10;
            if (j13 > j14) {
                Iterator it = j.K(j.L(CollectionsKt.e0(list2), new Comparator() { // from class: com.unity3d.services.core.network.domain.CleanupDirectory$invoke$$inlined$sortedBy$1
                    @Override // java.util.Comparator
                    public final int compare(T t11, T t12) {
                        return a.a(Long.valueOf(((File) t11).lastModified()), Long.valueOf(((File) t12).lastModified()));
                    }
                }), k.a(Long.valueOf(j13), CollectionsKt.n()), new Function2<Pair<? extends Long, ? extends List<? extends File>>, File, Pair<? extends Long, ? extends List<? extends File>>>() { // from class: com.unity3d.services.core.network.domain.CleanupDirectory$invoke$additionalFiles$2
                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Pair<? extends Long, ? extends List<? extends File>> invoke(Pair<? extends Long, ? extends List<? extends File>> pair2, File file4) {
                        return invoke2((Pair<Long, ? extends List<? extends File>>) pair2, file4);
                    }

                    @NotNull
                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final Pair<Long, List<File>> invoke2(@NotNull Pair<Long, ? extends List<? extends File>> pair2, @NotNull File file4) {
                        Intrinsics.checkNotNullParameter(pair2, "<name for destructuring parameter 0>");
                        Intrinsics.checkNotNullParameter(file4, "file");
                        return k.a(Long.valueOf(pair2.b().longValue() - file4.length()), CollectionsKt.L0(pair2.d(), file4));
                    }
                }).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    if (((Number) ((Pair) next).b()).longValue() <= j14) {
                        obj = next;
                        break;
                    }
                }
                Pair pair2 = (Pair) obj;
                if (pair2 != null && (list = (List) pair2.d()) != null) {
                    list2 = list;
                }
                for (File file4 : list2) {
                    file4.delete();
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException(("Directory does not exist or is not a directory: " + directory).toString());
    }
}
