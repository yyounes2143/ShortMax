package io.bidmachine;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Value;
@Deprecated
/* loaded from: classes7.dex */
public final class SessionAdParams extends lp.g<SessionAdParams> {
    private Integer sessionDuration;

    void clear() {
        this.sessionDuration = null;
    }

    void fillUserExtension(@NonNull Struct.Builder builder) {
        if (this.sessionDuration != null) {
            builder.putFields("sessionduration", Value.newBuilder().setNumberValue(this.sessionDuration.intValue()).build());
        }
    }

    @Nullable
    Integer getSessionDuration() {
        return this.sessionDuration;
    }

    @Override // lp.g
    public void merge(@NonNull SessionAdParams sessionAdParams) {
        this.sessionDuration = (Integer) io.bidmachine.core.g.b0(this.sessionDuration, sessionAdParams.sessionDuration);
    }

    @NonNull
    @Deprecated
    /* renamed from: setClickRate */
    public SessionAdParams m4924setClickRate(@Nullable Float f10) {
        io.bidmachine.core.a.l("The method setClickRate is no longer supported and has no effect.");
        return this;
    }

    @NonNull
    @Deprecated
    /* renamed from: setCompletionRate */
    public SessionAdParams m4925setCompletionRate(@Nullable Float f10) {
        io.bidmachine.core.a.l("The method setCompletionRate is no longer supported and has no effect.");
        return this;
    }

    @NonNull
    @Deprecated
    /* renamed from: setImpressionCount */
    public SessionAdParams m4926setImpressionCount(@Nullable Integer num) {
        io.bidmachine.core.a.l("The method setImpressionCount is no longer supported and has no effect.");
        return this;
    }

    @NonNull
    @Deprecated
    /* renamed from: setIsUserClickedOnLastAd */
    public SessionAdParams m4927setIsUserClickedOnLastAd(@Nullable Boolean bool) {
        io.bidmachine.core.a.l("The method setIsUserClickedOnLastAd is no longer supported and has no effect.");
        return this;
    }

    @NonNull
    /* renamed from: setSessionDuration */
    public SessionAdParams m4928setSessionDuration(@Nullable Integer num) {
        if (num != null && num.intValue() < 0) {
            io.bidmachine.core.a.g("session duration shouldn't be negative");
        } else {
            this.sessionDuration = num;
        }
        return this;
    }
}
