package eh;

import com.startshorts.androidplayer.bean.notification.RecommendShortsNotification;
import com.startshorts.androidplayer.bean.push.CustomPush;
import com.startshorts.androidplayer.bean.push.PushTime;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PushLocalDS.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPushLocalDS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PushLocalDS.kt\ncom/startshorts/androidplayer/repo/push/PushLocalDS\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n1863#2,2:69\n*S KotlinDebug\n*F\n+ 1 PushLocalDS.kt\ncom/startshorts/androidplayer/repo/push/PushLocalDS\n*L\n52#1:69,2\n*E\n"})
/* loaded from: classes7.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final i<List<RecommendShortsNotification>> f51343a = kotlin.c.b(new Function0() { // from class: eh.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            List h10;
            h10 = b.h();
            return h10;
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static final List h() {
        return new ArrayList();
    }

    public final void b(@NotNull RecommendShortsNotification notification) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        this.f51343a.getValue().add(notification);
    }

    public final void c() {
        if (this.f51343a.isInitialized()) {
            this.f51343a.getValue().clear();
        }
    }

    @Nullable
    public final List<CustomPush> d() {
        return ud.b.f68412a.k0();
    }

    @Nullable
    public final List<tf.c> e() {
        List<CustomPush> d10 = d();
        List<CustomPush> list = d10;
        if (list != null && !list.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (CustomPush customPush : d10) {
                String languageCode = customPush.getLanguageCode();
                if (languageCode == null || languageCode.length() == 0 || Intrinsics.areEqual(customPush.getLanguageCode(), DeviceUtil.f48146a.s())) {
                    arrayList.add(new tf.c(customPush.getId(), new PushTime(customPush.getPushTime(), customPush.getEndTime(), customPush.getInterval(), customPush.getMaxCount())));
                }
            }
            return arrayList;
        }
        return null;
    }

    @Nullable
    public final RecommendShortsNotification f() {
        if (this.f51343a.isInitialized()) {
            return (RecommendShortsNotification) CollectionsKt.Q(this.f51343a.getValue());
        }
        return null;
    }

    public final boolean g() {
        if (this.f51343a.isInitialized()) {
            return this.f51343a.getValue().isEmpty();
        }
        return true;
    }
}
