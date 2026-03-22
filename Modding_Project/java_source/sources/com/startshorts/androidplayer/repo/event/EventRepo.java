package com.startshorts.androidplayer.repo.event;

import com.startshorts.androidplayer.utils.CoroutineUtil;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import rs.c;
/* compiled from: EventRepo.kt */
@Metadata
/* loaded from: classes7.dex */
public final class EventRepo {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final EventRepo f44011a = new EventRepo();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final EventRemoteDS f44012b = new EventRemoteDS();

    private EventRepo() {
    }

    public static /* synthetic */ Object d(EventRepo eventRepo, String str, String str2, List list, Function1 function1, Function0 function0, c cVar, int i10, Object obj) {
        Function1 function12;
        Function0 function02;
        if ((i10 & 8) != 0) {
            function12 = null;
        } else {
            function12 = function1;
        }
        if ((i10 & 16) != 0) {
            function02 = null;
        } else {
            function02 = function0;
        }
        return eventRepo.c(str, str2, list, function12, function02, cVar);
    }

    @NotNull
    public final r b() {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "queryEventAdjustTime", false, new EventRepo$queryEventAdjustTime$1(null), 2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00fd  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(@org.jetbrains.annotations.NotNull java.lang.String r17, @org.jetbrains.annotations.NotNull java.lang.String r18, @org.jetbrains.annotations.NotNull java.util.List<java.lang.Long> r19, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function1<? super java.lang.Integer, kotlin.Unit> r20, @org.jetbrains.annotations.Nullable kotlin.jvm.functions.Function0<kotlin.Unit> r21, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r22) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.event.EventRepo.c(java.lang.String, java.lang.String, java.util.List, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function0, rs.c):java.lang.Object");
    }
}
