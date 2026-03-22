package com.applovin.shadow.okio.internal;

import com.applovin.shadow.okio.FileSystem;
import com.applovin.shadow.okio.Path;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.m;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FileSystem.kt */
@Metadata
@d(c = "com.applovin.shadow.okio.internal.-FileSystem$commonDeleteRecursively$sequence$1", f = "FileSystem.kt", l = {75}, m = "invokeSuspend")
/* renamed from: com.applovin.shadow.okio.internal.-FileSystem$commonDeleteRecursively$sequence$1  reason: invalid class name */
/* loaded from: classes2.dex */
public final class FileSystem$commonDeleteRecursively$sequence$1 extends RestrictedSuspendLambda implements Function2<i<? super Path>, c<? super Unit>, Object> {
    final /* synthetic */ Path $fileOrDirectory;
    final /* synthetic */ FileSystem $this_commonDeleteRecursively;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileSystem$commonDeleteRecursively$sequence$1(FileSystem fileSystem, Path path, c<? super FileSystem$commonDeleteRecursively$sequence$1> cVar) {
        super(2, cVar);
        this.$this_commonDeleteRecursively = fileSystem;
        this.$fileOrDirectory = path;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        FileSystem$commonDeleteRecursively$sequence$1 fileSystem$commonDeleteRecursively$sequence$1 = new FileSystem$commonDeleteRecursively$sequence$1(this.$this_commonDeleteRecursively, this.$fileOrDirectory, cVar);
        fileSystem$commonDeleteRecursively$sequence$1.L$0 = obj;
        return fileSystem$commonDeleteRecursively$sequence$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            FileSystem fileSystem = this.$this_commonDeleteRecursively;
            m mVar = new m();
            Path path = this.$fileOrDirectory;
            this.label = 1;
            if (FileSystem.collectRecursively((i) this.L$0, fileSystem, mVar, path, false, true, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull i<? super Path> iVar, @Nullable c<? super Unit> cVar) {
        return ((FileSystem$commonDeleteRecursively$sequence$1) create(iVar, cVar)).invokeSuspend(Unit.f60915a);
    }
}
