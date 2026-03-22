package androidx.credentials.provider;

import android.os.Bundle;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: BeginGetCustomCredentialOption.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBeginGetCustomCredentialOption.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BeginGetCustomCredentialOption.kt\nandroidx/credentials/provider/BeginGetCustomCredentialOption\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,70:1\n1#2:71\n*E\n"})
/* loaded from: classes.dex */
public class BeginGetCustomCredentialOption extends BeginGetCredentialOption {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: BeginGetCustomCredentialOption.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final BeginGetCustomCredentialOption createFrom$credentials_release(@NotNull Bundle data, @NotNull String id2, @NotNull String type) {
            Intrinsics.checkNotNullParameter(data, "data");
            Intrinsics.checkNotNullParameter(id2, "id");
            Intrinsics.checkNotNullParameter(type, "type");
            return new BeginGetCustomCredentialOption(id2, type, data);
        }

        @NotNull
        public final BeginGetCustomCredentialOption createFromEntrySlice$credentials_release(@NotNull Bundle data, @NotNull String id2, @NotNull String type) {
            Intrinsics.checkNotNullParameter(data, "data");
            Intrinsics.checkNotNullParameter(id2, "id");
            Intrinsics.checkNotNullParameter(type, "type");
            return new BeginGetCustomCredentialOption(id2, type, data);
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeginGetCustomCredentialOption(@NotNull String id2, @NotNull String type, @NotNull Bundle candidateQueryData) {
        super(id2, type, candidateQueryData);
        Intrinsics.checkNotNullParameter(id2, "id");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
        if (id2.length() > 0) {
            if (type.length() > 0) {
                return;
            }
            throw new IllegalArgumentException("type should not be empty");
        }
        throw new IllegalArgumentException("id should not be empty");
    }
}
