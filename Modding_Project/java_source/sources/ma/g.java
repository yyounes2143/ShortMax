package ma;

import android.content.Context;
import android.util.Log;
import com.amazonaws.mobileconnectors.s3.transferutility.TransferObserver;
import com.amazonaws.mobileconnectors.s3.transferutility.TransferUtility;
import com.hades.aar.storage.base.UploadStatus;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes5.dex */
public final class g {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final g f62497a = new g();

    /* renamed from: b  reason: collision with root package name */
    public static TransferUtility f62498b;

    public static final Unit a(na.d dVar) {
        dVar.a("", UploadStatus.ERROR, "context 没传");
        return Unit.f60915a;
    }

    public static final Unit b(na.d dVar, String str) {
        dVar.a(str, UploadStatus.START, "");
        return Unit.f60915a;
    }

    public static void c(final Function0 function0) {
        Log.d("S3FileUploader", "runInUI called");
        vu.b.f69559a.a(new Runnable() { // from class: ma.f
            @Override // java.lang.Runnable
            public final void run() {
                g.g(Function0.this);
            }
        });
    }

    public static final int d(g gVar, String str) {
        gVar.getClass();
        return Log.d("S3FileUploader", str);
    }

    public static final /* synthetic */ void e(g gVar, Function0 function0) {
        gVar.getClass();
        c(function0);
    }

    public static final Unit f(na.d dVar) {
        dVar.a("", UploadStatus.ERROR, "transferUtility 初始化异常");
        return Unit.f60915a;
    }

    public static final void g(Function0 function0) {
        function0.invoke();
    }

    public static final Unit h(na.d dVar) {
        dVar.a("", UploadStatus.ERROR, "文件夹不支持上传");
        return Unit.f60915a;
    }

    public static final Unit i(na.d dVar) {
        dVar.a("", UploadStatus.ERROR, "文件不存在");
        return Unit.f60915a;
    }

    @NotNull
    public String j(@NotNull na.b builder) {
        TransferUtility transferUtility;
        Intrinsics.checkNotNullParameter(builder, "builder");
        Context invoke = builder.b().invoke();
        if (invoke == null) {
            final na.d f10 = builder.f();
            if (f10 != null) {
                g gVar = f62497a;
                Function0 function0 = new Function0() { // from class: ma.a
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return g.a(na.d.this);
                    }
                };
                gVar.getClass();
                c(function0);
                return "";
            }
            return "";
        }
        synchronized (this) {
            try {
                if (f62498b == null) {
                    Log.d("S3FileUploader", "getTransferUtility init");
                    f62498b = new tu.b().c(invoke);
                }
                transferUtility = f62498b;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (transferUtility == null) {
            final na.d f11 = builder.f();
            if (f11 != null) {
                g gVar2 = f62497a;
                Function0 function02 = new Function0() { // from class: ma.b
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return g.f(na.d.this);
                    }
                };
                gVar2.getClass();
                c(function02);
                return "";
            }
            return "";
        }
        File file = new File(builder.d());
        if (file.isDirectory()) {
            final na.d f12 = builder.f();
            if (f12 != null) {
                g gVar3 = f62497a;
                Function0 function03 = new Function0() { // from class: ma.c
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return g.h(na.d.this);
                    }
                };
                gVar3.getClass();
                c(function03);
                return "";
            }
            return "";
        } else if (!file.exists()) {
            final na.d f13 = builder.f();
            if (f13 != null) {
                g gVar4 = f62497a;
                Function0 function04 = new Function0() { // from class: ma.d
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return g.i(na.d.this);
                    }
                };
                gVar4.getClass();
                c(function04);
                return "";
            }
            return "";
        } else {
            TransferObserver k10 = transferUtility.k(builder.g() + '/' + builder.c(), new File(builder.d()));
            final String valueOf = String.valueOf(k10.e());
            final na.d f14 = builder.f();
            if (f14 != null) {
                g gVar5 = f62497a;
                Function0 function05 = new Function0() { // from class: ma.e
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return g.b(na.d.this, valueOf);
                    }
                };
                gVar5.getClass();
                c(function05);
                Log.d("S3FileUploader", "uploadFile " + UploadStatus.START);
            }
            Intrinsics.checkNotNull(k10);
            if (builder.f() == null) {
                builder.e();
            } else {
                k10.f(new su.d(builder));
            }
            return valueOf;
        }
    }
}
