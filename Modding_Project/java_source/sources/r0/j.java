package r0;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Calls.kt */
@Metadata
/* loaded from: classes2.dex */
final class j implements Callback, Function1<Throwable, Unit> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Call f65451a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final gt.i<Response> f65452b;

    /* JADX WARN: Multi-variable type inference failed */
    public j(@NotNull Call call, @NotNull gt.i<? super Response> iVar) {
        this.f65451a = call;
        this.f65452b = iVar;
    }

    public void a(@Nullable Throwable th2) {
        try {
            this.f65451a.cancel();
        } catch (Throwable unused) {
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
        a(th2);
        return Unit.f60915a;
    }

    @Override // okhttp3.Callback
    public void onFailure(@NotNull Call call, @NotNull IOException iOException) {
        if (!call.isCanceled()) {
            gt.i<Response> iVar = this.f65452b;
            Result.a aVar = Result.f60901b;
            iVar.resumeWith(Result.d(kotlin.f.a(iOException)));
        }
    }

    @Override // okhttp3.Callback
    public void onResponse(@NotNull Call call, @NotNull Response response) {
        this.f65452b.resumeWith(Result.d(response));
    }
}
