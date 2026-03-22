package com.startshorts.androidplayer.utils;

import gt.g0;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FileUtil.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.utils.FileUtil$deleteFile$1", f = "FileUtil.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class FileUtil$deleteFile$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48160h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ File f48161i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileUtil$deleteFile$1(File file, c<? super FileUtil$deleteFile$1> cVar) {
        super(2, cVar);
        this.f48161i = file;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new FileUtil$deleteFile$1(this.f48161i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((FileUtil$deleteFile$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f48160h == 0) {
            f.b(obj);
            FileUtil.f48159a.c(this.f48161i);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
