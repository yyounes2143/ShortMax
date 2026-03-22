package up;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import aq.k;
import io.bidmachine.rendering.measurer.CompositeHtmlMeasurer;
import io.bidmachine.rendering.measurer.CompositeVideoMeasurer;
import io.bidmachine.rendering.measurer.HtmlMeasurer;
import io.bidmachine.rendering.measurer.VideoMeasurer;
import io.bidmachine.rendering.model.AdElementType;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rq.c0;
import wp.f;
@Metadata
/* loaded from: classes8.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final lq.a f68581a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f68582b;

    @Metadata
    /* loaded from: classes8.dex */
    public /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f68583a;

        static {
            int[] iArr = new int[AdElementType.values().length];
            try {
                iArr[AdElementType.Mraid.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AdElementType.Video.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AdElementType.Image.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AdElementType.Label.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[AdElementType.Progress.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[AdElementType.Countdown.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            f68583a = iArr;
        }
    }

    public b(@NotNull Context context, @NotNull lq.a repository) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(repository, "repository");
        this.f68581a = repository;
        this.f68582b = context.getApplicationContext();
    }

    @VisibleForTesting
    @Nullable
    public final HtmlMeasurer a(@Nullable qq.b bVar, @Nullable List<c0> list) {
        HtmlMeasurer htmlMeasurer;
        if (bVar == null || list == null || list.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (c0 c0Var : list) {
            try {
                htmlMeasurer = bVar.b(this.f68582b, c0Var.a(), c0Var.b());
            } catch (Throwable unused) {
                htmlMeasurer = null;
            }
            if (htmlMeasurer != null) {
                arrayList.add(htmlMeasurer);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new CompositeHtmlMeasurer(arrayList);
    }

    @NotNull
    public final up.a b(@NotNull rq.a adElementParams, @NotNull c adFormListener, @NotNull jq.b eventCallback, @Nullable io.bidmachine.rendering.internal.detector.brokencreative.a aVar) {
        Intrinsics.checkNotNullParameter(adElementParams, "adElementParams");
        Intrinsics.checkNotNullParameter(adFormListener, "adFormListener");
        Intrinsics.checkNotNullParameter(eventCallback, "eventCallback");
        switch (a.f68583a[adElementParams.a().ordinal()]) {
            case 1:
                Context applicationContext = this.f68582b;
                Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
                return new f(applicationContext, this.f68581a, adElementParams, adFormListener, eventCallback, aVar, a(adElementParams.h(), adElementParams.i()));
            case 2:
                Context applicationContext2 = this.f68582b;
                Intrinsics.checkNotNullExpressionValue(applicationContext2, "applicationContext");
                return new k(applicationContext2, this.f68581a, adElementParams, adFormListener, eventCallback, aVar, c(adElementParams.h(), adElementParams.i()));
            case 3:
                Context applicationContext3 = this.f68582b;
                Intrinsics.checkNotNullExpressionValue(applicationContext3, "applicationContext");
                return new xp.a(applicationContext3, this.f68581a, adElementParams, adFormListener, eventCallback, aVar);
            case 4:
                Context applicationContext4 = this.f68582b;
                Intrinsics.checkNotNullExpressionValue(applicationContext4, "applicationContext");
                return new yp.a(applicationContext4, this.f68581a, adElementParams, adFormListener, eventCallback, aVar);
            case 5:
                Context applicationContext5 = this.f68582b;
                Intrinsics.checkNotNullExpressionValue(applicationContext5, "applicationContext");
                return new zp.a(applicationContext5, this.f68581a, adElementParams, adFormListener, eventCallback, aVar);
            case 6:
                Context applicationContext6 = this.f68582b;
                Intrinsics.checkNotNullExpressionValue(applicationContext6, "applicationContext");
                return new vp.a(applicationContext6, this.f68581a, adElementParams, adFormListener, eventCallback, aVar);
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    @VisibleForTesting
    @Nullable
    public final VideoMeasurer c(@Nullable qq.b bVar, @Nullable List<c0> list) {
        VideoMeasurer videoMeasurer;
        if (bVar == null || list == null || list.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (c0 c0Var : list) {
            try {
                videoMeasurer = bVar.a(this.f68582b, c0Var.a(), c0Var.b());
            } catch (Throwable unused) {
                videoMeasurer = null;
            }
            if (videoMeasurer != null) {
                arrayList.add(videoMeasurer);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new CompositeVideoMeasurer(arrayList);
    }
}
