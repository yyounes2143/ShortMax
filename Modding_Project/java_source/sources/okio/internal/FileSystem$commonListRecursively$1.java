package okio.internal;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.m;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.i;
import okio.FileSystem;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FileSystem.kt */
@Metadata
@d(c = "okio.internal.-FileSystem$commonListRecursively$1", f = "FileSystem.kt", l = {96}, m = "invokeSuspend")
/* renamed from: okio.internal.-FileSystem$commonListRecursively$1  reason: invalid class name */
/* loaded from: classes8.dex */
public final class FileSystem$commonListRecursively$1 extends RestrictedSuspendLambda implements Function2<i<? super Path>, c<? super Unit>, Object> {
    final /* synthetic */ Path $dir;
    final /* synthetic */ boolean $followSymlinks;
    final /* synthetic */ FileSystem $this_commonListRecursively;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileSystem$commonListRecursively$1(Path path, FileSystem fileSystem, boolean z10, c<? super FileSystem$commonListRecursively$1> cVar) {
        super(2, cVar);
        this.$dir = path;
        this.$this_commonListRecursively = fileSystem;
        this.$followSymlinks = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        FileSystem$commonListRecursively$1 fileSystem$commonListRecursively$1 = new FileSystem$commonListRecursively$1(this.$dir, this.$this_commonListRecursively, this.$followSymlinks, cVar);
        fileSystem$commonListRecursively$1.L$0 = obj;
        return fileSystem$commonListRecursively$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        i iVar;
        m mVar;
        Iterator<Path> it;
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                it = (Iterator) this.L$2;
                f.b(obj);
                mVar = (m) this.L$1;
                iVar = (i) this.L$0;
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            m mVar2 = new m();
            mVar2.addLast(this.$dir);
            iVar = (i) this.L$0;
            mVar = mVar2;
            it = this.$this_commonListRecursively.list(this.$dir).iterator();
        }
        while (it.hasNext()) {
            Path next = it.next();
            FileSystem fileSystem = this.$this_commonListRecursively;
            boolean z10 = this.$followSymlinks;
            this.L$0 = iVar;
            this.L$1 = mVar;
            this.L$2 = it;
            this.label = 1;
            if (FileSystem.collectRecursively(iVar, fileSystem, mVar, next, z10, false, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull i<? super Path> iVar, @Nullable c<? super Unit> cVar) {
        return ((FileSystem$commonListRecursively$1) create(iVar, cVar)).invokeSuspend(Unit.f60915a);
    }
}
