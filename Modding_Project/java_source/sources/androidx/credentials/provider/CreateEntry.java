package androidx.credentials.provider;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.app.slice.Slice;
import android.app.slice.SliceItem;
import android.app.slice.SliceSpec;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.credentials.PasswordCredential;
import androidx.credentials.PublicKeyCredential;
import java.time.Instant;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CreateEntry.kt */
@RequiresApi(26)
@Metadata
@SourceDebugExtension({"SMAP\nCreateEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateEntry.kt\nandroidx/credentials/provider/CreateEntry\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,487:1\n1#2:488\n*E\n"})
/* loaded from: classes.dex */
public final class CreateEntry {
    @NotNull
    private static final String AUTO_SELECT_FALSE_STRING = "false";
    @NotNull
    private static final String AUTO_SELECT_TRUE_STRING = "true";
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int DESCRIPTION_MAX_CHAR_LIMIT = 300;
    private static final int REVISION_ID = 1;
    @NotNull
    private static final String SLICE_HINT_ACCOUNT_NAME = "androidx.credentials.provider.createEntry.SLICE_HINT_USER_PROVIDER_ACCOUNT_NAME";
    @NotNull
    private static final String SLICE_HINT_AUTO_SELECT_ALLOWED = "androidx.credentials.provider.createEntry.SLICE_HINT_AUTO_SELECT_ALLOWED";
    @NotNull
    private static final String SLICE_HINT_CREDENTIAL_COUNT_INFORMATION = "androidx.credentials.provider.createEntry.SLICE_HINT_CREDENTIAL_COUNT_INFORMATION";
    @NotNull
    private static final String SLICE_HINT_ICON = "androidx.credentials.provider.createEntry.SLICE_HINT_PROFILE_ICON";
    @NotNull
    private static final String SLICE_HINT_LAST_USED_TIME_MILLIS = "androidx.credentials.provider.createEntry.SLICE_HINT_LAST_USED_TIME_MILLIS";
    @NotNull
    private static final String SLICE_HINT_NOTE = "androidx.credentials.provider.createEntry.SLICE_HINT_NOTE";
    @NotNull
    private static final String SLICE_HINT_PENDING_INTENT = "androidx.credentials.provider.createEntry.SLICE_HINT_PENDING_INTENT";
    @NotNull
    private static final String SLICE_SPEC_TYPE = "CreateEntry";
    @NotNull
    private static final String TAG = "CreateEntry";
    @NotNull
    public static final String TYPE_TOTAL_CREDENTIAL = "TOTAL_CREDENTIAL_COUNT_TYPE";
    @NotNull
    private final CharSequence accountName;
    @NotNull
    private final Map<String, Integer> credentialCountInformationMap;
    @Nullable
    private final CharSequence description;
    @Nullable
    private final Icon icon;
    private final boolean isAutoSelectAllowed;
    @Nullable
    private final Instant lastUsedTime;
    @NotNull
    private final PendingIntent pendingIntent;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CreateEntry.kt */
    @Metadata
    @RequiresApi(28)
    @SourceDebugExtension({"SMAP\nCreateEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateEntry.kt\nandroidx/credentials/provider/CreateEntry$Api28Impl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,487:1\n1855#2,2:488\n1855#2,2:490\n215#3,2:492\n*S KotlinDebug\n*F\n+ 1 CreateEntry.kt\nandroidx/credentials/provider/CreateEntry$Api28Impl\n*L\n347#1:488,2\n388#1:490,2\n404#1:492,2\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Api28Impl {
        @NotNull
        public static final Api28Impl INSTANCE = new Api28Impl();

        private Api28Impl() {
        }

        @NotNull
        public static final Map<String, Integer> convertBundleToCredentialCountInfo$credentials_release(@Nullable Bundle bundle) {
            HashMap hashMap = new HashMap();
            if (bundle == null) {
                return hashMap;
            }
            Set<String> keySet = bundle.keySet();
            Intrinsics.checkNotNullExpressionValue(keySet, "bundle.keySet()");
            for (String it : keySet) {
                try {
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    hashMap.put(it, Integer.valueOf(bundle.getInt(it)));
                } catch (Exception e10) {
                    Log.i("CreateEntry", "Issue unpacking credential count info bundle: " + e10.getMessage());
                }
            }
            return hashMap;
        }

        @Nullable
        public static final Bundle convertCredentialCountInfoToBundle$credentials_release(@NotNull Map<String, Integer> credentialCountInformationMap) {
            Intrinsics.checkNotNullParameter(credentialCountInformationMap, "credentialCountInformationMap");
            Bundle bundle = new Bundle();
            boolean z10 = false;
            for (Map.Entry<String, Integer> entry : credentialCountInformationMap.entrySet()) {
                if (entry.getValue() != null) {
                    Integer value = entry.getValue();
                    Intrinsics.checkNotNull(value);
                    bundle.putInt(entry.getKey(), value.intValue());
                    z10 = true;
                }
            }
            if (!z10) {
                return null;
            }
            return bundle;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v9, types: [java.util.Map] */
        @SuppressLint({"WrongConstant"})
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @Nullable
        public static final CreateEntry fromSlice(@NotNull Slice slice) {
            Intrinsics.checkNotNullParameter(slice, "slice");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            List<SliceItem> items = slice.getItems();
            Intrinsics.checkNotNullExpressionValue(items, "slice.items");
            LinkedHashMap linkedHashMap2 = linkedHashMap;
            CharSequence charSequence = null;
            PendingIntent pendingIntent = null;
            Icon icon = null;
            CharSequence charSequence2 = null;
            Instant instant = null;
            boolean z10 = false;
            for (SliceItem sliceItem : items) {
                if (sliceItem.hasHint(CreateEntry.SLICE_HINT_ACCOUNT_NAME)) {
                    charSequence = sliceItem.getText();
                } else if (sliceItem.hasHint(CreateEntry.SLICE_HINT_ICON)) {
                    icon = sliceItem.getIcon();
                } else if (sliceItem.hasHint(CreateEntry.SLICE_HINT_PENDING_INTENT)) {
                    pendingIntent = sliceItem.getAction();
                } else if (sliceItem.hasHint(CreateEntry.SLICE_HINT_CREDENTIAL_COUNT_INFORMATION)) {
                    Map<String, Integer> convertBundleToCredentialCountInfo$credentials_release = convertBundleToCredentialCountInfo$credentials_release(sliceItem.getBundle());
                    Intrinsics.checkNotNull(convertBundleToCredentialCountInfo$credentials_release, "null cannot be cast to non-null type kotlin.collections.MutableMap<kotlin.String, kotlin.Int?>");
                    linkedHashMap2 = TypeIntrinsics.asMutableMap(convertBundleToCredentialCountInfo$credentials_release);
                } else if (sliceItem.hasHint(CreateEntry.SLICE_HINT_LAST_USED_TIME_MILLIS)) {
                    instant = Instant.ofEpochMilli(sliceItem.getLong());
                } else if (sliceItem.hasHint(CreateEntry.SLICE_HINT_NOTE)) {
                    charSequence2 = sliceItem.getText();
                } else if (sliceItem.hasHint(CreateEntry.SLICE_HINT_LAST_USED_TIME_MILLIS)) {
                    instant = Instant.ofEpochMilli(sliceItem.getLong());
                } else if (sliceItem.hasHint(CreateEntry.SLICE_HINT_AUTO_SELECT_ALLOWED) && Intrinsics.areEqual(sliceItem.getText(), CreateEntry.AUTO_SELECT_TRUE_STRING)) {
                    z10 = true;
                }
            }
            try {
                Intrinsics.checkNotNull(charSequence);
                Intrinsics.checkNotNull(pendingIntent);
                return new CreateEntry(charSequence, pendingIntent, icon, charSequence2, instant, linkedHashMap2, z10);
            } catch (Exception e10) {
                Log.i("CreateEntry", "fromSlice failed with: " + e10.getMessage());
                return null;
            }
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @NotNull
        public static final Slice toSlice(@NotNull CreateEntry createEntry) {
            String str;
            Intrinsics.checkNotNullParameter(createEntry, "createEntry");
            CharSequence accountName = createEntry.getAccountName();
            Icon icon = createEntry.getIcon();
            CharSequence description = createEntry.getDescription();
            Instant lastUsedTime = createEntry.getLastUsedTime();
            Map map = createEntry.credentialCountInformationMap;
            PendingIntent pendingIntent = createEntry.getPendingIntent();
            Slice.Builder builder = new Slice.Builder(Uri.EMPTY, new SliceSpec("CreateEntry", 1));
            if (createEntry.isAutoSelectAllowed()) {
                str = CreateEntry.AUTO_SELECT_TRUE_STRING;
            } else {
                str = CreateEntry.AUTO_SELECT_FALSE_STRING;
            }
            builder.addText(accountName, null, CollectionsKt.e(CreateEntry.SLICE_HINT_ACCOUNT_NAME));
            if (lastUsedTime != null) {
                builder.addLong(lastUsedTime.toEpochMilli(), null, CollectionsKt.e(CreateEntry.SLICE_HINT_LAST_USED_TIME_MILLIS));
            }
            if (description != null) {
                builder.addText(description, null, CollectionsKt.e(CreateEntry.SLICE_HINT_NOTE));
            }
            if (icon != null) {
                builder.addIcon(icon, null, CollectionsKt.e(CreateEntry.SLICE_HINT_ICON));
            }
            if (convertCredentialCountInfoToBundle$credentials_release(map) != null) {
                builder.addBundle(convertCredentialCountInfoToBundle$credentials_release(map), null, CollectionsKt.e(CreateEntry.SLICE_HINT_CREDENTIAL_COUNT_INFORMATION));
            }
            builder.addAction(pendingIntent, new Slice.Builder(builder).addHints(Collections.singletonList(CreateEntry.SLICE_HINT_PENDING_INTENT)).build(), null).addText(str, null, CollectionsKt.e(CreateEntry.SLICE_HINT_AUTO_SELECT_ALLOWED));
            Slice build = builder.build();
            Intrinsics.checkNotNullExpressionValue(build, "sliceBuilder.build()");
            return build;
        }
    }

    /* compiled from: CreateEntry.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Builder {
        @NotNull
        private final CharSequence accountName;
        private boolean autoSelectAllowed;
        @NotNull
        private Map<String, Integer> credentialCountInformationMap;
        @Nullable
        private CharSequence description;
        @Nullable
        private Icon icon;
        @Nullable
        private Instant lastUsedTime;
        @Nullable
        private Integer passwordCredentialCount;
        @NotNull
        private final PendingIntent pendingIntent;
        @Nullable
        private Integer publicKeyCredentialCount;
        @Nullable
        private Integer totalCredentialCount;

        public Builder(@NotNull CharSequence accountName, @NotNull PendingIntent pendingIntent) {
            Intrinsics.checkNotNullParameter(accountName, "accountName");
            Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
            this.accountName = accountName;
            this.pendingIntent = pendingIntent;
            this.credentialCountInformationMap = new LinkedHashMap();
        }

        @NotNull
        public final CreateEntry build() {
            return new CreateEntry(this.accountName, this.pendingIntent, this.icon, this.description, this.lastUsedTime, this.credentialCountInformationMap, this.autoSelectAllowed);
        }

        @NotNull
        public final Builder setAutoSelectAllowed(boolean z10) {
            this.autoSelectAllowed = z10;
            return this;
        }

        @NotNull
        public final Builder setDescription(@Nullable CharSequence charSequence) {
            Integer num;
            if (charSequence != null) {
                num = Integer.valueOf(charSequence.length());
            } else {
                num = null;
            }
            if (num != null && charSequence.length() > 300) {
                throw new IllegalArgumentException("Description must follow a limit of 300 characters.");
            }
            this.description = charSequence;
            return this;
        }

        @NotNull
        public final Builder setIcon(@Nullable Icon icon) {
            this.icon = icon;
            return this;
        }

        @NotNull
        public final Builder setLastUsedTime(@Nullable Instant instant) {
            this.lastUsedTime = instant;
            return this;
        }

        @NotNull
        public final Builder setPasswordCredentialCount(int i10) {
            this.passwordCredentialCount = Integer.valueOf(i10);
            this.credentialCountInformationMap.put(PasswordCredential.TYPE_PASSWORD_CREDENTIAL, Integer.valueOf(i10));
            return this;
        }

        @NotNull
        public final Builder setPublicKeyCredentialCount(int i10) {
            this.publicKeyCredentialCount = Integer.valueOf(i10);
            this.credentialCountInformationMap.put(PublicKeyCredential.TYPE_PUBLIC_KEY_CREDENTIAL, Integer.valueOf(i10));
            return this;
        }

        @NotNull
        public final Builder setTotalCredentialCount(int i10) {
            this.totalCredentialCount = Integer.valueOf(i10);
            this.credentialCountInformationMap.put(CreateEntry.TYPE_TOTAL_CREDENTIAL, Integer.valueOf(i10));
            return this;
        }
    }

    /* compiled from: CreateEntry.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @Nullable
        public final CreateEntry fromSlice(@NotNull Slice slice) {
            Intrinsics.checkNotNullParameter(slice, "slice");
            if (Build.VERSION.SDK_INT >= 28) {
                return Api28Impl.fromSlice(slice);
            }
            return null;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        @Nullable
        public final Slice toSlice(@NotNull CreateEntry createEntry) {
            Intrinsics.checkNotNullParameter(createEntry, "createEntry");
            if (Build.VERSION.SDK_INT >= 28) {
                return Api28Impl.toSlice(createEntry);
            }
            return null;
        }

        private Companion() {
        }
    }

    public CreateEntry(@NotNull CharSequence accountName, @NotNull PendingIntent pendingIntent, @Nullable Icon icon, @Nullable CharSequence charSequence, @Nullable Instant instant, @NotNull Map<String, Integer> credentialCountInformationMap, boolean z10) {
        Intrinsics.checkNotNullParameter(accountName, "accountName");
        Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
        Intrinsics.checkNotNullParameter(credentialCountInformationMap, "credentialCountInformationMap");
        this.accountName = accountName;
        this.pendingIntent = pendingIntent;
        this.icon = icon;
        this.description = charSequence;
        this.lastUsedTime = instant;
        this.credentialCountInformationMap = credentialCountInformationMap;
        this.isAutoSelectAllowed = z10;
        if (accountName.length() > 0) {
            if (charSequence != null && charSequence.length() > 300) {
                throw new IllegalArgumentException("Description must follow a limit of 300 characters.");
            }
            return;
        }
        throw new IllegalArgumentException("accountName must not be empty");
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @Nullable
    public static final CreateEntry fromSlice(@NotNull Slice slice) {
        return Companion.fromSlice(slice);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @Nullable
    public static final Slice toSlice(@NotNull CreateEntry createEntry) {
        return Companion.toSlice(createEntry);
    }

    @NotNull
    public final CharSequence getAccountName() {
        return this.accountName;
    }

    @Nullable
    public final CharSequence getDescription() {
        return this.description;
    }

    @Nullable
    public final Icon getIcon() {
        return this.icon;
    }

    @Nullable
    public final Instant getLastUsedTime() {
        return this.lastUsedTime;
    }

    @Nullable
    public final Integer getPasswordCredentialCount() {
        return this.credentialCountInformationMap.get(PasswordCredential.TYPE_PASSWORD_CREDENTIAL);
    }

    @NotNull
    public final PendingIntent getPendingIntent() {
        return this.pendingIntent;
    }

    @Nullable
    public final Integer getPublicKeyCredentialCount() {
        return this.credentialCountInformationMap.get(PublicKeyCredential.TYPE_PUBLIC_KEY_CREDENTIAL);
    }

    @Nullable
    public final Integer getTotalCredentialCount() {
        return this.credentialCountInformationMap.get(TYPE_TOTAL_CREDENTIAL);
    }

    public final boolean isAutoSelectAllowed() {
        return this.isAutoSelectAllowed;
    }

    public /* synthetic */ CreateEntry(CharSequence charSequence, PendingIntent pendingIntent, CharSequence charSequence2, Instant instant, Icon icon, Integer num, Integer num2, Integer num3, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(charSequence, pendingIntent, (i10 & 4) != 0 ? null : charSequence2, (i10 & 8) != 0 ? null : instant, (i10 & 16) != 0 ? null : icon, (i10 & 32) != 0 ? null : num, (i10 & 64) != 0 ? null : num2, (i10 & 128) != 0 ? null : num3, (i10 & 256) != 0 ? false : z10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CreateEntry(@NotNull CharSequence accountName, @NotNull PendingIntent pendingIntent, @Nullable CharSequence charSequence, @Nullable Instant instant, @Nullable Icon icon, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, boolean z10) {
        this(accountName, pendingIntent, icon, charSequence, instant, kotlin.collections.p0.o(ms.k.a(PasswordCredential.TYPE_PASSWORD_CREDENTIAL, num), ms.k.a(PublicKeyCredential.TYPE_PUBLIC_KEY_CREDENTIAL, num2), ms.k.a(TYPE_TOTAL_CREDENTIAL, num3)), z10);
        Intrinsics.checkNotNullParameter(accountName, "accountName");
        Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
    }
}
