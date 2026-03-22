package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.extensions.StringExtensionsKt;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.c;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidGetIsAdActivity.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AndroidGetIsAdActivity {
    @NotNull
    private final i activities$delegate;
    @NotNull
    private final SessionRepository sessionRepository;

    public AndroidGetIsAdActivity(@NotNull SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        this.sessionRepository = sessionRepository;
        this.activities$delegate = c.b(new Function0<List<? extends ByteString>>() { // from class: com.unity3d.ads.core.domain.AndroidGetIsAdActivity$activities$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final List<? extends ByteString> invoke() {
                SessionRepository sessionRepository2;
                sessionRepository2 = AndroidGetIsAdActivity.this.sessionRepository;
                List<com.google.protobuf.ByteString> observableAndroidActivitiesList = sessionRepository2.getNativeConfiguration().getObservableAndroidActivitiesList();
                Intrinsics.checkNotNullExpressionValue(observableAndroidActivitiesList, "sessionRepository.native…ableAndroidActivitiesList");
                List<com.google.protobuf.ByteString> list = observableAndroidActivitiesList;
                ArrayList arrayList = new ArrayList(CollectionsKt.z(list, 10));
                for (com.google.protobuf.ByteString byteString : list) {
                    byte[] byteArray = byteString.toByteArray();
                    arrayList.add(ByteString.of(Arrays.copyOf(byteArray, byteArray.length)));
                }
                return arrayList;
            }
        });
    }

    private final List<ByteString> getActivities() {
        return (List) this.activities$delegate.getValue();
    }

    public final boolean invoke(@NotNull String activityName) {
        Intrinsics.checkNotNullParameter(activityName, "activityName");
        return getActivities().contains(ByteString.decodeHex(StringExtensionsKt.getSHA256Hash(activityName)));
    }
}
