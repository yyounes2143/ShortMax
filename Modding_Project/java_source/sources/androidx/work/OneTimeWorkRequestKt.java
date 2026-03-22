package androidx.work;

import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import androidx.work.OneTimeWorkRequest;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
/* compiled from: OneTimeWorkRequest.kt */
@Metadata
/* loaded from: classes2.dex */
public final class OneTimeWorkRequestKt {
    public static final /* synthetic */ <W extends ListenableWorker> OneTimeWorkRequest.Builder OneTimeWorkRequestBuilder() {
        Intrinsics.reifiedOperationMarker(4, ExifInterface.LONGITUDE_WEST);
        return new OneTimeWorkRequest.Builder(ListenableWorker.class);
    }

    @NotNull
    public static final OneTimeWorkRequest.Builder setInputMerger(@NotNull OneTimeWorkRequest.Builder builder, @NonNull @NotNull KClass<? extends InputMerger> inputMerger) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(inputMerger, "inputMerger");
        return builder.setInputMerger(zs.a.b(inputMerger));
    }
}
