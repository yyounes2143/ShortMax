package androidx.privacysandbox.ads.adservices.measurement;

import android.net.Uri;
import android.view.InputEvent;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SourceRegistrationRequest.kt */
@Metadata
@ExperimentalFeatures.RegisterSourceOptIn
/* loaded from: classes2.dex */
public final class SourceRegistrationRequest {
    @Nullable
    private final InputEvent inputEvent;
    @NotNull
    private final List<Uri> registrationUris;

    /* compiled from: SourceRegistrationRequest.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nSourceRegistrationRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SourceRegistrationRequest.kt\nandroidx/privacysandbox/ads/adservices/measurement/SourceRegistrationRequest$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,77:1\n1#2:78\n*E\n"})
    /* loaded from: classes2.dex */
    public static final class Builder {
        @Nullable
        private InputEvent inputEvent;
        @NotNull
        private final List<Uri> registrationUris;

        /* JADX WARN: Multi-variable type inference failed */
        public Builder(@NotNull List<? extends Uri> registrationUris) {
            Intrinsics.checkNotNullParameter(registrationUris, "registrationUris");
            this.registrationUris = registrationUris;
        }

        @NotNull
        public final SourceRegistrationRequest build() {
            return new SourceRegistrationRequest(this.registrationUris, this.inputEvent);
        }

        @NotNull
        public final Builder setInputEvent(@NotNull InputEvent inputEvent) {
            Intrinsics.checkNotNullParameter(inputEvent, "inputEvent");
            this.inputEvent = inputEvent;
            return this;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SourceRegistrationRequest(@NotNull List<? extends Uri> registrationUris, @Nullable InputEvent inputEvent) {
        Intrinsics.checkNotNullParameter(registrationUris, "registrationUris");
        this.registrationUris = registrationUris;
        this.inputEvent = inputEvent;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SourceRegistrationRequest)) {
            return false;
        }
        SourceRegistrationRequest sourceRegistrationRequest = (SourceRegistrationRequest) obj;
        if (Intrinsics.areEqual(this.registrationUris, sourceRegistrationRequest.registrationUris) && Intrinsics.areEqual(this.inputEvent, sourceRegistrationRequest.inputEvent)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final InputEvent getInputEvent() {
        return this.inputEvent;
    }

    @NotNull
    public final List<Uri> getRegistrationUris() {
        return this.registrationUris;
    }

    public int hashCode() {
        int hashCode = this.registrationUris.hashCode();
        InputEvent inputEvent = this.inputEvent;
        if (inputEvent != null) {
            return (hashCode * 31) + inputEvent.hashCode();
        }
        return hashCode;
    }

    @NotNull
    public String toString() {
        return "AppSourcesRegistrationRequest { " + ("RegistrationUris=[" + this.registrationUris + "], InputEvent=" + this.inputEvent) + " }";
    }

    public /* synthetic */ SourceRegistrationRequest(List list, InputEvent inputEvent, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i10 & 2) != 0 ? null : inputEvent);
    }
}
