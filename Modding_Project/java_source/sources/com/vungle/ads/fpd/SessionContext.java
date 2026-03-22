package com.vungle.ads.fpd;

import com.vungle.ads.internal.util.RangeUtil;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.d;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.k;
import vt.f;
import vt.l0;
import vt.r2;
import vt.v0;
import vt.w2;
/* compiled from: SessionContext.kt */
@k
@Metadata
/* loaded from: classes7.dex */
public final class SessionContext {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private List<String> friends;
    @Nullable
    private Float healthPercentile;
    @Nullable
    private Float inGamePurchasesUSD;
    @Nullable
    private Float levelPercentile;
    @Nullable
    private String page;
    @Nullable
    private Integer sessionDuration;
    @Nullable
    private Integer sessionStartTime;
    @Nullable
    private Integer signupDate;
    @Nullable
    private Integer timeSpent;
    @Nullable
    private String userID;
    @Nullable
    private Float userLevelPercentile;
    @Nullable
    private Float userScorePercentile;

    /* compiled from: SessionContext.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KSerializer<SessionContext> serializer() {
            return SessionContext$$serializer.INSTANCE;
        }

        private Companion() {
        }
    }

    public SessionContext() {
    }

    public static final void write$Self(@NotNull SessionContext self, @NotNull d output, @NotNull SerialDescriptor serialDesc) {
        Intrinsics.checkNotNullParameter(self, "self");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(serialDesc, "serialDesc");
        if (output.shouldEncodeElementDefault(serialDesc, 0) || self.levelPercentile != null) {
            output.encodeNullableSerializableElement(serialDesc, 0, l0.f69469a, self.levelPercentile);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 1) || self.page != null) {
            output.encodeNullableSerializableElement(serialDesc, 1, w2.f69539a, self.page);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 2) || self.timeSpent != null) {
            output.encodeNullableSerializableElement(serialDesc, 2, v0.f69529a, self.timeSpent);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 3) || self.signupDate != null) {
            output.encodeNullableSerializableElement(serialDesc, 3, v0.f69529a, self.signupDate);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 4) || self.userScorePercentile != null) {
            output.encodeNullableSerializableElement(serialDesc, 4, l0.f69469a, self.userScorePercentile);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 5) || self.userID != null) {
            output.encodeNullableSerializableElement(serialDesc, 5, w2.f69539a, self.userID);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 6) || self.friends != null) {
            output.encodeNullableSerializableElement(serialDesc, 6, new f(w2.f69539a), self.friends);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 7) || self.userLevelPercentile != null) {
            output.encodeNullableSerializableElement(serialDesc, 7, l0.f69469a, self.userLevelPercentile);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 8) || self.healthPercentile != null) {
            output.encodeNullableSerializableElement(serialDesc, 8, l0.f69469a, self.healthPercentile);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 9) || self.sessionStartTime != null) {
            output.encodeNullableSerializableElement(serialDesc, 9, v0.f69529a, self.sessionStartTime);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 10) || self.sessionDuration != null) {
            output.encodeNullableSerializableElement(serialDesc, 10, v0.f69529a, self.sessionDuration);
        }
        if (output.shouldEncodeElementDefault(serialDesc, 11) || self.inGamePurchasesUSD != null) {
            output.encodeNullableSerializableElement(serialDesc, 11, l0.f69469a, self.inGamePurchasesUSD);
        }
    }

    @NotNull
    public final SessionContext setFriends(@Nullable List<String> list) {
        List<String> list2;
        if (list != null) {
            list2 = CollectionsKt.g1(list);
        } else {
            list2 = null;
        }
        this.friends = list2;
        return this;
    }

    @NotNull
    public final SessionContext setHealthPercentile(float f10) {
        if (RangeUtil.INSTANCE.isInRange(f10, 0.0f, 100.0f)) {
            this.healthPercentile = Float.valueOf(f10);
        }
        return this;
    }

    @NotNull
    public final SessionContext setInGamePurchasesUSD(float f10) {
        if (RangeUtil.isInRange$default(RangeUtil.INSTANCE, f10, 0.0f, 0.0f, 4, (Object) null)) {
            this.inGamePurchasesUSD = Float.valueOf(f10);
        }
        return this;
    }

    @NotNull
    public final SessionContext setLevelPercentile(float f10) {
        if (RangeUtil.INSTANCE.isInRange(f10, 0.0f, 100.0f)) {
            this.levelPercentile = Float.valueOf(f10);
        }
        return this;
    }

    @NotNull
    public final SessionContext setPage(@NotNull String page) {
        Intrinsics.checkNotNullParameter(page, "page");
        this.page = page;
        return this;
    }

    @NotNull
    public final SessionContext setSessionDuration(int i10) {
        this.sessionDuration = Integer.valueOf(i10);
        return this;
    }

    @NotNull
    public final SessionContext setSessionStartTime(int i10) {
        this.sessionStartTime = Integer.valueOf(i10);
        return this;
    }

    @NotNull
    public final SessionContext setSignupDate(int i10) {
        this.signupDate = Integer.valueOf(i10);
        return this;
    }

    @NotNull
    public final SessionContext setTimeSpent(int i10) {
        this.timeSpent = Integer.valueOf(i10);
        return this;
    }

    @NotNull
    public final SessionContext setUserID(@NotNull String userID) {
        Intrinsics.checkNotNullParameter(userID, "userID");
        this.userID = userID;
        return this;
    }

    @NotNull
    public final SessionContext setUserLevelPercentile(float f10) {
        if (RangeUtil.INSTANCE.isInRange(f10, 0.0f, 100.0f)) {
            this.userLevelPercentile = Float.valueOf(f10);
        }
        return this;
    }

    @NotNull
    public final SessionContext setUserScorePercentile(float f10) {
        if (RangeUtil.INSTANCE.isInRange(f10, 0.0f, 100.0f)) {
            this.userScorePercentile = Float.valueOf(f10);
        }
        return this;
    }

    @c
    public /* synthetic */ SessionContext(int i10, Float f10, String str, Integer num, Integer num2, Float f11, String str2, List list, Float f12, Float f13, Integer num3, Integer num4, Float f14, r2 r2Var) {
        if ((i10 & 1) == 0) {
            this.levelPercentile = null;
        } else {
            this.levelPercentile = f10;
        }
        if ((i10 & 2) == 0) {
            this.page = null;
        } else {
            this.page = str;
        }
        if ((i10 & 4) == 0) {
            this.timeSpent = null;
        } else {
            this.timeSpent = num;
        }
        if ((i10 & 8) == 0) {
            this.signupDate = null;
        } else {
            this.signupDate = num2;
        }
        if ((i10 & 16) == 0) {
            this.userScorePercentile = null;
        } else {
            this.userScorePercentile = f11;
        }
        if ((i10 & 32) == 0) {
            this.userID = null;
        } else {
            this.userID = str2;
        }
        if ((i10 & 64) == 0) {
            this.friends = null;
        } else {
            this.friends = list;
        }
        if ((i10 & 128) == 0) {
            this.userLevelPercentile = null;
        } else {
            this.userLevelPercentile = f12;
        }
        if ((i10 & 256) == 0) {
            this.healthPercentile = null;
        } else {
            this.healthPercentile = f13;
        }
        if ((i10 & 512) == 0) {
            this.sessionStartTime = null;
        } else {
            this.sessionStartTime = num3;
        }
        if ((i10 & 1024) == 0) {
            this.sessionDuration = null;
        } else {
            this.sessionDuration = num4;
        }
        if ((i10 & 2048) == 0) {
            this.inGamePurchasesUSD = null;
        } else {
            this.inGamePurchasesUSD = f14;
        }
    }

    private static /* synthetic */ void getFriends$annotations() {
    }

    private static /* synthetic */ void getHealthPercentile$annotations() {
    }

    private static /* synthetic */ void getInGamePurchasesUSD$annotations() {
    }

    private static /* synthetic */ void getLevelPercentile$annotations() {
    }

    private static /* synthetic */ void getPage$annotations() {
    }

    private static /* synthetic */ void getSessionDuration$annotations() {
    }

    private static /* synthetic */ void getSessionStartTime$annotations() {
    }

    private static /* synthetic */ void getSignupDate$annotations() {
    }

    private static /* synthetic */ void getTimeSpent$annotations() {
    }

    private static /* synthetic */ void getUserID$annotations() {
    }

    private static /* synthetic */ void getUserLevelPercentile$annotations() {
    }

    private static /* synthetic */ void getUserScorePercentile$annotations() {
    }
}
