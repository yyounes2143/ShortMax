package com.facebook.fresco.middleware;

import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HasExtraData.kt */
@Metadata
/* loaded from: classes3.dex */
public interface HasExtraData {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;
    @NotNull
    public static final String KEY_BITMAP_CONFIG = "bitmap_config";
    @NotNull
    public static final String KEY_COLOR_SPACE = "image_color_space";
    @NotNull
    public static final String KEY_ENCODED_HEIGHT = "encoded_height";
    @NotNull
    public static final String KEY_ENCODED_SIZE = "encoded_size";
    @NotNull
    public static final String KEY_ENCODED_WIDTH = "encoded_width";
    @NotNull
    public static final String KEY_ID = "id";
    @NotNull
    public static final String KEY_IMAGE_FORMAT = "image_format";
    @NotNull
    public static final String KEY_IMAGE_SOURCE_EXTRAS = "image_source_extras";
    @NotNull
    public static final String KEY_IMAGE_SOURCE_TYPE = "image_source_type";
    @NotNull
    public static final String KEY_IS_ROUNDED = "is_rounded";
    @NotNull
    public static final String KEY_LAST_SCAN_NUMBER = "last_scan_num";
    @NotNull
    public static final String KEY_MODIFIED_URL = "modified_url";
    @NotNull
    public static final String KEY_MULTIPLEX_BITMAP_COUNT = "multiplex_bmp_cnt";
    @NotNull
    public static final String KEY_MULTIPLEX_ENCODED_COUNT = "multiplex_enc_cnt";
    @NotNull
    public static final String KEY_NON_FATAL_DECODE_ERROR = "non_fatal_decode_error";
    @NotNull
    public static final String KEY_ORIGIN = "origin";
    @NotNull
    public static final String KEY_ORIGINAL_URL = "original_url";
    @NotNull
    public static final String KEY_ORIGIN_SUBCATEGORY = "origin_sub";
    @NotNull
    public static final String KEY_URI_SOURCE = "uri_source";

    /* compiled from: HasExtraData.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        @NotNull
        public static final String KEY_BITMAP_CONFIG = "bitmap_config";
        @NotNull
        public static final String KEY_COLOR_SPACE = "image_color_space";
        @NotNull
        public static final String KEY_ENCODED_HEIGHT = "encoded_height";
        @NotNull
        public static final String KEY_ENCODED_SIZE = "encoded_size";
        @NotNull
        public static final String KEY_ENCODED_WIDTH = "encoded_width";
        @NotNull
        public static final String KEY_ID = "id";
        @NotNull
        public static final String KEY_IMAGE_FORMAT = "image_format";
        @NotNull
        public static final String KEY_IMAGE_SOURCE_EXTRAS = "image_source_extras";
        @NotNull
        public static final String KEY_IMAGE_SOURCE_TYPE = "image_source_type";
        @NotNull
        public static final String KEY_IS_ROUNDED = "is_rounded";
        @NotNull
        public static final String KEY_LAST_SCAN_NUMBER = "last_scan_num";
        @NotNull
        public static final String KEY_MODIFIED_URL = "modified_url";
        @NotNull
        public static final String KEY_MULTIPLEX_BITMAP_COUNT = "multiplex_bmp_cnt";
        @NotNull
        public static final String KEY_MULTIPLEX_ENCODED_COUNT = "multiplex_enc_cnt";
        @NotNull
        public static final String KEY_NON_FATAL_DECODE_ERROR = "non_fatal_decode_error";
        @NotNull
        public static final String KEY_ORIGIN = "origin";
        @NotNull
        public static final String KEY_ORIGINAL_URL = "original_url";
        @NotNull
        public static final String KEY_ORIGIN_SUBCATEGORY = "origin_sub";
        @NotNull
        public static final String KEY_URI_SOURCE = "uri_source";

        private Companion() {
        }
    }

    /* compiled from: HasExtraData.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ Object getExtra$default(HasExtraData hasExtraData, String str, Object obj, int i10, Object obj2) {
            if (obj2 == null) {
                if ((i10 & 2) != 0) {
                    obj = null;
                }
                return hasExtraData.getExtra(str, obj);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getExtra");
        }
    }

    @Nullable
    <E> E getExtra(@NotNull String str);

    @Nullable
    <E> E getExtra(@NotNull String str, @Nullable E e10);

    @NotNull
    Map<String, Object> getExtras();

    <E> void putExtra(@NotNull String str, @Nullable E e10);

    void putExtras(@NotNull Map<String, ? extends Object> map);
}
