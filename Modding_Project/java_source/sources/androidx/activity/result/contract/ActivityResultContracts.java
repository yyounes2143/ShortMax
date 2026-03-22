package androidx.activity.result.contract;

import android.annotation.SuppressLint;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.ext.SdkExtensions;
import android.provider.MediaStore;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.PickVisualMediaRequest;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.annotation.CallSuper;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.n;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.e;
import ms.c;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ActivityResultContracts.kt */
@Metadata
/* loaded from: classes.dex */
public final class ActivityResultContracts {

    /* compiled from: ActivityResultContracts.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static class CaptureVideo extends ActivityResultContract<Uri, Boolean> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        public final ActivityResultContract.SynchronousResult<Boolean> getSynchronousResult(@NotNull Context context, @NotNull Uri input) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(input, "input");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        @NotNull
        public Intent createIntent(@NotNull Context context, @NotNull Uri input) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(input, "input");
            Intent putExtra = new Intent("android.media.action.VIDEO_CAPTURE").putExtra("output", input);
            Intrinsics.checkNotNullExpressionValue(putExtra, "Intent(MediaStore.ACTION…tore.EXTRA_OUTPUT, input)");
            return putExtra;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        public final Boolean parseResult(int i10, @Nullable Intent intent) {
            return Boolean.valueOf(i10 == -1);
        }
    }

    /* compiled from: ActivityResultContracts.kt */
    @Metadata
    @RequiresApi(19)
    @SourceDebugExtension({"SMAP\nActivityResultContracts.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityResultContracts.kt\nandroidx/activity/result/contract/ActivityResultContracts$CreateDocument\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,959:1\n1#2:960\n*E\n"})
    /* loaded from: classes.dex */
    public static class CreateDocument extends ActivityResultContract<String, Uri> {
        @NotNull
        private final String mimeType;

        public CreateDocument(@NotNull String mimeType) {
            Intrinsics.checkNotNullParameter(mimeType, "mimeType");
            this.mimeType = mimeType;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        public final ActivityResultContract.SynchronousResult<Uri> getSynchronousResult(@NotNull Context context, @NotNull String input) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(input, "input");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        @NotNull
        public Intent createIntent(@NotNull Context context, @NotNull String input) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(input, "input");
            Intent putExtra = new Intent("android.intent.action.CREATE_DOCUMENT").setType(this.mimeType).putExtra("android.intent.extra.TITLE", input);
            Intrinsics.checkNotNullExpressionValue(putExtra, "Intent(Intent.ACTION_CRE…ntent.EXTRA_TITLE, input)");
            return putExtra;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        public final Uri parseResult(int i10, @Nullable Intent intent) {
            if (i10 != -1) {
                intent = null;
            }
            if (intent != null) {
                return intent.getData();
            }
            return null;
        }

        @c
        public CreateDocument() {
            this("*/*");
        }
    }

    /* compiled from: ActivityResultContracts.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nActivityResultContracts.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityResultContracts.kt\nandroidx/activity/result/contract/ActivityResultContracts$GetContent\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,959:1\n1#2:960\n*E\n"})
    /* loaded from: classes.dex */
    public static class GetContent extends ActivityResultContract<String, Uri> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        public final ActivityResultContract.SynchronousResult<Uri> getSynchronousResult(@NotNull Context context, @NotNull String input) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(input, "input");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        @NotNull
        public Intent createIntent(@NotNull Context context, @NotNull String input) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(input, "input");
            Intent type = new Intent("android.intent.action.GET_CONTENT").addCategory("android.intent.category.OPENABLE").setType(input);
            Intrinsics.checkNotNullExpressionValue(type, "Intent(Intent.ACTION_GET…          .setType(input)");
            return type;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        public final Uri parseResult(int i10, @Nullable Intent intent) {
            if (i10 != -1) {
                intent = null;
            }
            if (intent != null) {
                return intent.getData();
            }
            return null;
        }
    }

    /* compiled from: ActivityResultContracts.kt */
    @Metadata
    @RequiresApi(18)
    /* loaded from: classes.dex */
    public static class GetMultipleContents extends ActivityResultContract<String, List<Uri>> {
        @NotNull
        public static final Companion Companion = new Companion(null);

        /* compiled from: ActivityResultContracts.kt */
        @RequiresApi(18)
        @Metadata
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final List<Uri> getClipDataUris$activity_release(@NotNull Intent intent) {
                Intrinsics.checkNotNullParameter(intent, "<this>");
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                Uri data = intent.getData();
                if (data != null) {
                    linkedHashSet.add(data);
                }
                ClipData clipData = intent.getClipData();
                if (clipData == null && linkedHashSet.isEmpty()) {
                    return CollectionsKt.n();
                }
                if (clipData != null) {
                    int itemCount = clipData.getItemCount();
                    for (int i10 = 0; i10 < itemCount; i10++) {
                        Uri uri = clipData.getItemAt(i10).getUri();
                        if (uri != null) {
                            linkedHashSet.add(uri);
                        }
                    }
                }
                return new ArrayList(linkedHashSet);
            }

            private Companion() {
            }
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        public final ActivityResultContract.SynchronousResult<List<Uri>> getSynchronousResult(@NotNull Context context, @NotNull String input) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(input, "input");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        @NotNull
        public Intent createIntent(@NotNull Context context, @NotNull String input) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(input, "input");
            Intent putExtra = new Intent("android.intent.action.GET_CONTENT").addCategory("android.intent.category.OPENABLE").setType(input).putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
            Intrinsics.checkNotNullExpressionValue(putExtra, "Intent(Intent.ACTION_GET…TRA_ALLOW_MULTIPLE, true)");
            return putExtra;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        public final List<Uri> parseResult(int i10, @Nullable Intent intent) {
            List<Uri> clipDataUris$activity_release;
            if (i10 != -1) {
                intent = null;
            }
            return (intent == null || (clipDataUris$activity_release = Companion.getClipDataUris$activity_release(intent)) == null) ? CollectionsKt.n() : clipDataUris$activity_release;
        }
    }

    /* compiled from: ActivityResultContracts.kt */
    @Metadata
    @RequiresApi(19)
    @SourceDebugExtension({"SMAP\nActivityResultContracts.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityResultContracts.kt\nandroidx/activity/result/contract/ActivityResultContracts$OpenDocument\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,959:1\n1#2:960\n*E\n"})
    /* loaded from: classes.dex */
    public static class OpenDocument extends ActivityResultContract<String[], Uri> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        public final ActivityResultContract.SynchronousResult<Uri> getSynchronousResult(@NotNull Context context, @NotNull String[] input) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(input, "input");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        @NotNull
        public Intent createIntent(@NotNull Context context, @NotNull String[] input) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(input, "input");
            Intent type = new Intent("android.intent.action.OPEN_DOCUMENT").putExtra("android.intent.extra.MIME_TYPES", input).setType("*/*");
            Intrinsics.checkNotNullExpressionValue(type, "Intent(Intent.ACTION_OPE…          .setType(\"*/*\")");
            return type;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        public final Uri parseResult(int i10, @Nullable Intent intent) {
            if (i10 != -1) {
                intent = null;
            }
            if (intent != null) {
                return intent.getData();
            }
            return null;
        }
    }

    /* compiled from: ActivityResultContracts.kt */
    @Metadata
    @RequiresApi(21)
    @SourceDebugExtension({"SMAP\nActivityResultContracts.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityResultContracts.kt\nandroidx/activity/result/contract/ActivityResultContracts$OpenDocumentTree\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,959:1\n1#2:960\n*E\n"})
    /* loaded from: classes.dex */
    public static class OpenDocumentTree extends ActivityResultContract<Uri, Uri> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        public final ActivityResultContract.SynchronousResult<Uri> getSynchronousResult(@NotNull Context context, @Nullable Uri uri) {
            Intrinsics.checkNotNullParameter(context, "context");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        @NotNull
        public Intent createIntent(@NotNull Context context, @Nullable Uri uri) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT_TREE");
            if (Build.VERSION.SDK_INT >= 26 && uri != null) {
                intent.putExtra("android.provider.extra.INITIAL_URI", uri);
            }
            return intent;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        public final Uri parseResult(int i10, @Nullable Intent intent) {
            if (i10 != -1) {
                intent = null;
            }
            if (intent != null) {
                return intent.getData();
            }
            return null;
        }
    }

    /* compiled from: ActivityResultContracts.kt */
    @Metadata
    @RequiresApi(19)
    /* loaded from: classes.dex */
    public static class OpenMultipleDocuments extends ActivityResultContract<String[], List<Uri>> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        public final ActivityResultContract.SynchronousResult<List<Uri>> getSynchronousResult(@NotNull Context context, @NotNull String[] input) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(input, "input");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        @NotNull
        public Intent createIntent(@NotNull Context context, @NotNull String[] input) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(input, "input");
            Intent type = new Intent("android.intent.action.OPEN_DOCUMENT").putExtra("android.intent.extra.MIME_TYPES", input).putExtra("android.intent.extra.ALLOW_MULTIPLE", true).setType("*/*");
            Intrinsics.checkNotNullExpressionValue(type, "Intent(Intent.ACTION_OPE…          .setType(\"*/*\")");
            return type;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        public final List<Uri> parseResult(int i10, @Nullable Intent intent) {
            List<Uri> clipDataUris$activity_release;
            if (i10 != -1) {
                intent = null;
            }
            return (intent == null || (clipDataUris$activity_release = GetMultipleContents.Companion.getClipDataUris$activity_release(intent)) == null) ? CollectionsKt.n() : clipDataUris$activity_release;
        }
    }

    /* compiled from: ActivityResultContracts.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nActivityResultContracts.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityResultContracts.kt\nandroidx/activity/result/contract/ActivityResultContracts$PickContact\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,959:1\n1#2:960\n*E\n"})
    /* loaded from: classes.dex */
    public static final class PickContact extends ActivityResultContract<Void, Uri> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        public Intent createIntent(@NotNull Context context, @Nullable Void r22) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intent type = new Intent("android.intent.action.PICK").setType("vnd.android.cursor.dir/contact");
            Intrinsics.checkNotNullExpressionValue(type, "Intent(Intent.ACTION_PIC…ct.Contacts.CONTENT_TYPE)");
            return type;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        public Uri parseResult(int i10, @Nullable Intent intent) {
            if (i10 != -1) {
                intent = null;
            }
            if (intent != null) {
                return intent.getData();
            }
            return null;
        }
    }

    /* compiled from: ActivityResultContracts.kt */
    @Metadata
    @RequiresApi(19)
    /* loaded from: classes.dex */
    public static class PickMultipleVisualMedia extends ActivityResultContract<PickVisualMediaRequest, List<Uri>> {
        @NotNull
        public static final Companion Companion = new Companion(null);
        private final int maxItems;

        /* compiled from: ActivityResultContracts.kt */
        @Metadata
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @SuppressLint({"NewApi", "ClassVerificationFailure"})
            public final int getMaxItems$activity_release() {
                int pickImagesMaxLimit;
                if (PickVisualMedia.Companion.isSystemPickerAvailable$activity_release()) {
                    pickImagesMaxLimit = MediaStore.getPickImagesMaxLimit();
                    return pickImagesMaxLimit;
                }
                return Integer.MAX_VALUE;
            }

            private Companion() {
            }
        }

        public PickMultipleVisualMedia() {
            this(0, 1, null);
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        public final ActivityResultContract.SynchronousResult<List<Uri>> getSynchronousResult(@NotNull Context context, @NotNull PickVisualMediaRequest input) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(input, "input");
            return null;
        }

        public /* synthetic */ PickMultipleVisualMedia(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? Companion.getMaxItems$activity_release() : i10);
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @SuppressLint({"NewApi", "ClassVerificationFailure"})
        @CallSuper
        @NotNull
        public Intent createIntent(@NotNull Context context, @NotNull PickVisualMediaRequest input) {
            int pickImagesMaxLimit;
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(input, "input");
            PickVisualMedia.Companion companion = PickVisualMedia.Companion;
            if (companion.isSystemPickerAvailable$activity_release()) {
                Intent intent = new Intent("android.provider.action.PICK_IMAGES");
                intent.setType(companion.getVisualMimeType$activity_release(input.getMediaType()));
                int i10 = this.maxItems;
                pickImagesMaxLimit = MediaStore.getPickImagesMaxLimit();
                if (i10 <= pickImagesMaxLimit) {
                    intent.putExtra("android.provider.extra.PICK_IMAGES_MAX", this.maxItems);
                    return intent;
                }
                throw new IllegalArgumentException("Max items must be less or equals MediaStore.getPickImagesMaxLimit()");
            } else if (companion.isSystemFallbackPickerAvailable$activity_release(context)) {
                ResolveInfo systemFallbackPicker$activity_release = companion.getSystemFallbackPicker$activity_release(context);
                if (systemFallbackPicker$activity_release != null) {
                    ActivityInfo activityInfo = systemFallbackPicker$activity_release.activityInfo;
                    Intent intent2 = new Intent(PickVisualMedia.ACTION_SYSTEM_FALLBACK_PICK_IMAGES);
                    intent2.setClassName(activityInfo.applicationInfo.packageName, activityInfo.name);
                    intent2.setType(companion.getVisualMimeType$activity_release(input.getMediaType()));
                    intent2.putExtra(PickVisualMedia.GMS_EXTRA_PICK_IMAGES_MAX, this.maxItems);
                    return intent2;
                }
                throw new IllegalStateException("Required value was null.");
            } else if (companion.isGmsPickerAvailable$activity_release(context)) {
                ResolveInfo gmsPicker$activity_release = companion.getGmsPicker$activity_release(context);
                if (gmsPicker$activity_release != null) {
                    ActivityInfo activityInfo2 = gmsPicker$activity_release.activityInfo;
                    Intent intent3 = new Intent(PickVisualMedia.GMS_ACTION_PICK_IMAGES);
                    intent3.setClassName(activityInfo2.applicationInfo.packageName, activityInfo2.name);
                    intent3.putExtra(PickVisualMedia.GMS_EXTRA_PICK_IMAGES_MAX, this.maxItems);
                    return intent3;
                }
                throw new IllegalStateException("Required value was null.");
            } else {
                Intent intent4 = new Intent("android.intent.action.OPEN_DOCUMENT");
                intent4.setType(companion.getVisualMimeType$activity_release(input.getMediaType()));
                intent4.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
                if (intent4.getType() == null) {
                    intent4.setType("*/*");
                    intent4.putExtra("android.intent.extra.MIME_TYPES", new String[]{"image/*", "video/*"});
                    return intent4;
                }
                return intent4;
            }
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        public final List<Uri> parseResult(int i10, @Nullable Intent intent) {
            List<Uri> clipDataUris$activity_release;
            if (i10 != -1) {
                intent = null;
            }
            return (intent == null || (clipDataUris$activity_release = GetMultipleContents.Companion.getClipDataUris$activity_release(intent)) == null) ? CollectionsKt.n() : clipDataUris$activity_release;
        }

        public PickMultipleVisualMedia(int i10) {
            this.maxItems = i10;
            if (i10 <= 1) {
                throw new IllegalArgumentException("Max items must be higher than 1");
            }
        }
    }

    /* compiled from: ActivityResultContracts.kt */
    @Metadata
    @RequiresApi(19)
    @SourceDebugExtension({"SMAP\nActivityResultContracts.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityResultContracts.kt\nandroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,959:1\n1#2:960\n*E\n"})
    /* loaded from: classes.dex */
    public static class PickVisualMedia extends ActivityResultContract<PickVisualMediaRequest, Uri> {
        @NotNull
        public static final String ACTION_SYSTEM_FALLBACK_PICK_IMAGES = "androidx.activity.result.contract.action.PICK_IMAGES";
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        public static final String EXTRA_SYSTEM_FALLBACK_PICK_IMAGES_MAX = "androidx.activity.result.contract.extra.PICK_IMAGES_MAX";
        @NotNull
        public static final String GMS_ACTION_PICK_IMAGES = "com.google.android.gms.provider.action.PICK_IMAGES";
        @NotNull
        public static final String GMS_EXTRA_PICK_IMAGES_MAX = "com.google.android.gms.provider.extra.PICK_IMAGES_MAX";

        /* compiled from: ActivityResultContracts.kt */
        @Metadata
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @Nullable
            public final ResolveInfo getGmsPicker$activity_release(@NotNull Context context) {
                Intrinsics.checkNotNullParameter(context, "context");
                return context.getPackageManager().resolveActivity(new Intent(PickVisualMedia.GMS_ACTION_PICK_IMAGES), 1114112);
            }

            @Nullable
            public final ResolveInfo getSystemFallbackPicker$activity_release(@NotNull Context context) {
                Intrinsics.checkNotNullParameter(context, "context");
                return context.getPackageManager().resolveActivity(new Intent(PickVisualMedia.ACTION_SYSTEM_FALLBACK_PICK_IMAGES), 1114112);
            }

            @Nullable
            public final String getVisualMimeType$activity_release(@NotNull VisualMediaType input) {
                Intrinsics.checkNotNullParameter(input, "input");
                if (input instanceof ImageOnly) {
                    return "image/*";
                }
                if (input instanceof VideoOnly) {
                    return "video/*";
                }
                if (input instanceof SingleMimeType) {
                    return ((SingleMimeType) input).getMimeType();
                }
                if (input instanceof ImageAndVideo) {
                    return null;
                }
                throw new NoWhenBranchMatchedException();
            }

            public final boolean isGmsPickerAvailable$activity_release(@NotNull Context context) {
                Intrinsics.checkNotNullParameter(context, "context");
                if (getGmsPicker$activity_release(context) != null) {
                    return true;
                }
                return false;
            }

            @c
            @SuppressLint({"ClassVerificationFailure", "NewApi"})
            public final boolean isPhotoPickerAvailable() {
                return isSystemPickerAvailable$activity_release();
            }

            public final boolean isSystemFallbackPickerAvailable$activity_release(@NotNull Context context) {
                Intrinsics.checkNotNullParameter(context, "context");
                if (getSystemFallbackPicker$activity_release(context) != null) {
                    return true;
                }
                return false;
            }

            @SuppressLint({"ClassVerificationFailure", "NewApi"})
            public final boolean isSystemPickerAvailable$activity_release() {
                int extensionVersion;
                int i10 = Build.VERSION.SDK_INT;
                if (i10 >= 33) {
                    return true;
                }
                if (i10 >= 30) {
                    extensionVersion = SdkExtensions.getExtensionVersion(30);
                    if (extensionVersion >= 2) {
                        return true;
                    }
                }
                return false;
            }

            private Companion() {
            }

            @SuppressLint({"ClassVerificationFailure", "NewApi"})
            public final boolean isPhotoPickerAvailable(@NotNull Context context) {
                Intrinsics.checkNotNullParameter(context, "context");
                return isSystemPickerAvailable$activity_release() || isSystemFallbackPickerAvailable$activity_release(context) || isGmsPickerAvailable$activity_release(context);
            }

            public static /* synthetic */ void getACTION_SYSTEM_FALLBACK_PICK_IMAGES$annotations() {
            }

            public static /* synthetic */ void getEXTRA_SYSTEM_FALLBACK_PICK_IMAGES_MAX$annotations() {
            }
        }

        /* compiled from: ActivityResultContracts.kt */
        @Metadata
        /* loaded from: classes.dex */
        public static final class ImageAndVideo implements VisualMediaType {
            @NotNull
            public static final ImageAndVideo INSTANCE = new ImageAndVideo();

            private ImageAndVideo() {
            }
        }

        /* compiled from: ActivityResultContracts.kt */
        @Metadata
        /* loaded from: classes.dex */
        public static final class ImageOnly implements VisualMediaType {
            @NotNull
            public static final ImageOnly INSTANCE = new ImageOnly();

            private ImageOnly() {
            }
        }

        /* compiled from: ActivityResultContracts.kt */
        @Metadata
        /* loaded from: classes.dex */
        public static final class SingleMimeType implements VisualMediaType {
            @NotNull
            private final String mimeType;

            public SingleMimeType(@NotNull String mimeType) {
                Intrinsics.checkNotNullParameter(mimeType, "mimeType");
                this.mimeType = mimeType;
            }

            @NotNull
            public final String getMimeType() {
                return this.mimeType;
            }
        }

        /* compiled from: ActivityResultContracts.kt */
        @Metadata
        /* loaded from: classes.dex */
        public static final class VideoOnly implements VisualMediaType {
            @NotNull
            public static final VideoOnly INSTANCE = new VideoOnly();

            private VideoOnly() {
            }
        }

        /* compiled from: ActivityResultContracts.kt */
        @Metadata
        /* loaded from: classes.dex */
        public interface VisualMediaType {
        }

        @c
        @SuppressLint({"ClassVerificationFailure", "NewApi"})
        public static final boolean isPhotoPickerAvailable() {
            return Companion.isPhotoPickerAvailable();
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        public final ActivityResultContract.SynchronousResult<Uri> getSynchronousResult(@NotNull Context context, @NotNull PickVisualMediaRequest input) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(input, "input");
            return null;
        }

        @SuppressLint({"ClassVerificationFailure", "NewApi"})
        public static final boolean isPhotoPickerAvailable(@NotNull Context context) {
            return Companion.isPhotoPickerAvailable(context);
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        @NotNull
        public Intent createIntent(@NotNull Context context, @NotNull PickVisualMediaRequest input) {
            Intent intent;
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(input, "input");
            Companion companion = Companion;
            if (companion.isSystemPickerAvailable$activity_release()) {
                Intent intent2 = new Intent("android.provider.action.PICK_IMAGES");
                intent2.setType(companion.getVisualMimeType$activity_release(input.getMediaType()));
                return intent2;
            }
            if (companion.isSystemFallbackPickerAvailable$activity_release(context)) {
                ResolveInfo systemFallbackPicker$activity_release = companion.getSystemFallbackPicker$activity_release(context);
                if (systemFallbackPicker$activity_release != null) {
                    ActivityInfo activityInfo = systemFallbackPicker$activity_release.activityInfo;
                    intent = new Intent(ACTION_SYSTEM_FALLBACK_PICK_IMAGES);
                    intent.setClassName(activityInfo.applicationInfo.packageName, activityInfo.name);
                    intent.setType(companion.getVisualMimeType$activity_release(input.getMediaType()));
                } else {
                    throw new IllegalStateException("Required value was null.");
                }
            } else if (companion.isGmsPickerAvailable$activity_release(context)) {
                ResolveInfo gmsPicker$activity_release = companion.getGmsPicker$activity_release(context);
                if (gmsPicker$activity_release != null) {
                    ActivityInfo activityInfo2 = gmsPicker$activity_release.activityInfo;
                    intent = new Intent(GMS_ACTION_PICK_IMAGES);
                    intent.setClassName(activityInfo2.applicationInfo.packageName, activityInfo2.name);
                    intent.setType(companion.getVisualMimeType$activity_release(input.getMediaType()));
                } else {
                    throw new IllegalStateException("Required value was null.");
                }
            } else {
                Intent intent3 = new Intent("android.intent.action.OPEN_DOCUMENT");
                intent3.setType(companion.getVisualMimeType$activity_release(input.getMediaType()));
                if (intent3.getType() == null) {
                    intent3.setType("*/*");
                    intent3.putExtra("android.intent.extra.MIME_TYPES", new String[]{"image/*", "video/*"});
                    return intent3;
                }
                return intent3;
            }
            return intent;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        public final Uri parseResult(int i10, @Nullable Intent intent) {
            if (i10 != -1) {
                intent = null;
            }
            if (intent != null) {
                Uri data = intent.getData();
                if (data == null) {
                    data = (Uri) CollectionsKt.firstOrNull(GetMultipleContents.Companion.getClipDataUris$activity_release(intent));
                }
                return data;
            }
            return null;
        }
    }

    /* compiled from: ActivityResultContracts.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nActivityResultContracts.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityResultContracts.kt\nandroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,959:1\n12541#2,2:960\n8676#2,2:962\n9358#2,4:964\n11365#2:968\n11700#2,3:969\n*S KotlinDebug\n*F\n+ 1 ActivityResultContracts.kt\nandroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions\n*L\n188#1:960,2\n195#1:962,2\n195#1:964,4\n208#1:968\n208#1:969,3\n*E\n"})
    /* loaded from: classes.dex */
    public static final class RequestMultiplePermissions extends ActivityResultContract<String[], Map<String, Boolean>> {
        @NotNull
        public static final String ACTION_REQUEST_PERMISSIONS = "androidx.activity.result.contract.action.REQUEST_PERMISSIONS";
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        public static final String EXTRA_PERMISSIONS = "androidx.activity.result.contract.extra.PERMISSIONS";
        @NotNull
        public static final String EXTRA_PERMISSION_GRANT_RESULTS = "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS";

        /* compiled from: ActivityResultContracts.kt */
        @Metadata
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final Intent createIntent$activity_release(@NotNull String[] input) {
                Intrinsics.checkNotNullParameter(input, "input");
                Intent putExtra = new Intent(RequestMultiplePermissions.ACTION_REQUEST_PERMISSIONS).putExtra(RequestMultiplePermissions.EXTRA_PERMISSIONS, input);
                Intrinsics.checkNotNullExpressionValue(putExtra, "Intent(ACTION_REQUEST_PE…EXTRA_PERMISSIONS, input)");
                return putExtra;
            }

            private Companion() {
            }
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        public Intent createIntent(@NotNull Context context, @NotNull String[] input) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(input, "input");
            return Companion.createIntent$activity_release(input);
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        public ActivityResultContract.SynchronousResult<Map<String, Boolean>> getSynchronousResult(@NotNull Context context, @NotNull String[] input) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(input, "input");
            if (input.length == 0) {
                return new ActivityResultContract.SynchronousResult<>(p0.i());
            }
            for (String str : input) {
                if (ContextCompat.checkSelfPermission(context, str) != 0) {
                    return null;
                }
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(e.e(p0.e(input.length), 16));
            for (String str2 : input) {
                Pair a10 = k.a(str2, Boolean.TRUE);
                linkedHashMap.put(a10.e(), a10.f());
            }
            return new ActivityResultContract.SynchronousResult<>(linkedHashMap);
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        public Map<String, Boolean> parseResult(int i10, @Nullable Intent intent) {
            if (i10 != -1) {
                return p0.i();
            }
            if (intent == null) {
                return p0.i();
            }
            String[] stringArrayExtra = intent.getStringArrayExtra(EXTRA_PERMISSIONS);
            int[] intArrayExtra = intent.getIntArrayExtra(EXTRA_PERMISSION_GRANT_RESULTS);
            if (intArrayExtra != null && stringArrayExtra != null) {
                ArrayList arrayList = new ArrayList(intArrayExtra.length);
                for (int i11 : intArrayExtra) {
                    arrayList.add(Boolean.valueOf(i11 == 0));
                }
                return p0.v(CollectionsKt.m1(n.h0(stringArrayExtra), arrayList));
            }
            return p0.i();
        }
    }

    /* compiled from: ActivityResultContracts.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nActivityResultContracts.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityResultContracts.kt\nandroidx/activity/result/contract/ActivityResultContracts$RequestPermission\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,959:1\n12774#2,2:960\n*S KotlinDebug\n*F\n+ 1 ActivityResultContracts.kt\nandroidx/activity/result/contract/ActivityResultContracts$RequestPermission\n*L\n228#1:960,2\n*E\n"})
    /* loaded from: classes.dex */
    public static final class RequestPermission extends ActivityResultContract<String, Boolean> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        public Intent createIntent(@NotNull Context context, @NotNull String input) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(input, "input");
            return RequestMultiplePermissions.Companion.createIntent$activity_release(new String[]{input});
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        public ActivityResultContract.SynchronousResult<Boolean> getSynchronousResult(@NotNull Context context, @NotNull String input) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(input, "input");
            if (ContextCompat.checkSelfPermission(context, input) == 0) {
                return new ActivityResultContract.SynchronousResult<>(Boolean.TRUE);
            }
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        public Boolean parseResult(int i10, @Nullable Intent intent) {
            if (intent != null && i10 == -1) {
                int[] intArrayExtra = intent.getIntArrayExtra(RequestMultiplePermissions.EXTRA_PERMISSION_GRANT_RESULTS);
                boolean z10 = false;
                if (intArrayExtra != null) {
                    int length = intArrayExtra.length;
                    int i11 = 0;
                    while (true) {
                        if (i11 >= length) {
                            break;
                        } else if (intArrayExtra[i11] == 0) {
                            z10 = true;
                            break;
                        } else {
                            i11++;
                        }
                    }
                }
                return Boolean.valueOf(z10);
            }
            return Boolean.FALSE;
        }
    }

    /* compiled from: ActivityResultContracts.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class StartActivityForResult extends ActivityResultContract<Intent, ActivityResult> {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        public static final String EXTRA_ACTIVITY_OPTIONS_BUNDLE = "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE";

        /* compiled from: ActivityResultContracts.kt */
        @Metadata
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        public Intent createIntent(@NotNull Context context, @NotNull Intent input) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(input, "input");
            return input;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        public ActivityResult parseResult(int i10, @Nullable Intent intent) {
            return new ActivityResult(i10, intent);
        }
    }

    /* compiled from: ActivityResultContracts.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class StartIntentSenderForResult extends ActivityResultContract<IntentSenderRequest, ActivityResult> {
        @NotNull
        public static final String ACTION_INTENT_SENDER_REQUEST = "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST";
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        public static final String EXTRA_INTENT_SENDER_REQUEST = "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST";
        @NotNull
        public static final String EXTRA_SEND_INTENT_EXCEPTION = "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION";

        /* compiled from: ActivityResultContracts.kt */
        @Metadata
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        public Intent createIntent(@NotNull Context context, @NotNull IntentSenderRequest input) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(input, "input");
            Intent putExtra = new Intent(ACTION_INTENT_SENDER_REQUEST).putExtra(EXTRA_INTENT_SENDER_REQUEST, input);
            Intrinsics.checkNotNullExpressionValue(putExtra, "Intent(ACTION_INTENT_SEN…NT_SENDER_REQUEST, input)");
            return putExtra;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        public ActivityResult parseResult(int i10, @Nullable Intent intent) {
            return new ActivityResult(i10, intent);
        }
    }

    /* compiled from: ActivityResultContracts.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static class TakePicture extends ActivityResultContract<Uri, Boolean> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        public final ActivityResultContract.SynchronousResult<Boolean> getSynchronousResult(@NotNull Context context, @NotNull Uri input) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(input, "input");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        @NotNull
        public Intent createIntent(@NotNull Context context, @NotNull Uri input) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(input, "input");
            Intent putExtra = new Intent("android.media.action.IMAGE_CAPTURE").putExtra("output", input);
            Intrinsics.checkNotNullExpressionValue(putExtra, "Intent(MediaStore.ACTION…tore.EXTRA_OUTPUT, input)");
            return putExtra;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        @NotNull
        public final Boolean parseResult(int i10, @Nullable Intent intent) {
            return Boolean.valueOf(i10 == -1);
        }
    }

    /* compiled from: ActivityResultContracts.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nActivityResultContracts.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityResultContracts.kt\nandroidx/activity/result/contract/ActivityResultContracts$TakePicturePreview\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,959:1\n1#2:960\n*E\n"})
    /* loaded from: classes.dex */
    public static class TakePicturePreview extends ActivityResultContract<Void, Bitmap> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        public final ActivityResultContract.SynchronousResult<Bitmap> getSynchronousResult(@NotNull Context context, @Nullable Void r22) {
            Intrinsics.checkNotNullParameter(context, "context");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        @NotNull
        public Intent createIntent(@NotNull Context context, @Nullable Void r22) {
            Intrinsics.checkNotNullParameter(context, "context");
            return new Intent("android.media.action.IMAGE_CAPTURE");
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        public final Bitmap parseResult(int i10, @Nullable Intent intent) {
            if (i10 != -1) {
                intent = null;
            }
            if (intent != null) {
                return (Bitmap) intent.getParcelableExtra("data");
            }
            return null;
        }
    }

    /* compiled from: ActivityResultContracts.kt */
    @c
    @Metadata
    @SourceDebugExtension({"SMAP\nActivityResultContracts.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityResultContracts.kt\nandroidx/activity/result/contract/ActivityResultContracts$TakeVideo\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,959:1\n1#2:960\n*E\n"})
    /* loaded from: classes.dex */
    public static class TakeVideo extends ActivityResultContract<Uri, Bitmap> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        public final ActivityResultContract.SynchronousResult<Bitmap> getSynchronousResult(@NotNull Context context, @NotNull Uri input) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(input, "input");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        @NotNull
        public Intent createIntent(@NotNull Context context, @NotNull Uri input) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(input, "input");
            Intent putExtra = new Intent("android.media.action.VIDEO_CAPTURE").putExtra("output", input);
            Intrinsics.checkNotNullExpressionValue(putExtra, "Intent(MediaStore.ACTION…tore.EXTRA_OUTPUT, input)");
            return putExtra;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        @Nullable
        public final Bitmap parseResult(int i10, @Nullable Intent intent) {
            if (i10 != -1) {
                intent = null;
            }
            if (intent != null) {
                return (Bitmap) intent.getParcelableExtra("data");
            }
            return null;
        }
    }

    private ActivityResultContracts() {
    }
}
