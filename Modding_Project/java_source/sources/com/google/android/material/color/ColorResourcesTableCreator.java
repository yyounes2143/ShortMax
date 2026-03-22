package com.google.android.material.color;

import android.content.Context;
import android.util.Pair;
import androidx.annotation.ColorInt;
import com.inmobi.commons.core.configs.AdConfig;
import com.ss.ttm.player.MediaPlayer;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class ColorResourcesTableCreator {
    private static final byte ANDROID_PACKAGE_ID = 1;
    private static final byte APPLICATION_PACKAGE_ID = Byte.MAX_VALUE;
    private static final short HEADER_TYPE_PACKAGE = 512;
    private static final short HEADER_TYPE_RES_TABLE = 2;
    private static final short HEADER_TYPE_STRING_POOL = 1;
    private static final short HEADER_TYPE_TYPE = 513;
    private static final short HEADER_TYPE_TYPE_SPEC = 514;
    private static final String RESOURCE_TYPE_NAME_COLOR = "color";
    private static byte typeIdColor;
    private static final PackageInfo ANDROID_PACKAGE_INFO = new PackageInfo(1, "android");
    private static final Comparator<ColorResource> COLOR_RESOURCE_COMPARATOR = new Comparator<ColorResource>() { // from class: com.google.android.material.color.ColorResourcesTableCreator.1
        @Override // java.util.Comparator
        public int compare(ColorResource colorResource, ColorResource colorResource2) {
            return colorResource.entryId - colorResource2.entryId;
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class ColorResource {
        private final short entryId;
        private final String name;
        private final byte packageId;
        private final byte typeId;
        @ColorInt
        private final int value;

        ColorResource(int i10, String str, int i11) {
            this.name = str;
            this.value = i11;
            this.entryId = (short) (65535 & i10);
            this.typeId = (byte) ((i10 >> 16) & 255);
            this.packageId = (byte) ((i10 >> 24) & 255);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class PackageChunk {
        private static final short HEADER_SIZE = 288;
        private static final int PACKAGE_NAME_MAX_LENGTH = 128;
        private final ResChunkHeader header;
        private final StringPoolChunk keyStrings;
        private final PackageInfo packageInfo;
        private final TypeSpecChunk typeSpecChunk;
        private final StringPoolChunk typeStrings = new StringPoolChunk(false, "?1", "?2", "?3", "?4", "?5", "color");

        PackageChunk(PackageInfo packageInfo, List<ColorResource> list) {
            this.packageInfo = packageInfo;
            String[] strArr = new String[list.size()];
            for (int i10 = 0; i10 < list.size(); i10++) {
                strArr[i10] = list.get(i10).name;
            }
            this.keyStrings = new StringPoolChunk(true, strArr);
            this.typeSpecChunk = new TypeSpecChunk(list);
            this.header = new ResChunkHeader(ColorResourcesTableCreator.HEADER_TYPE_PACKAGE, HEADER_SIZE, getChunkSize());
        }

        int getChunkSize() {
            return this.typeStrings.getChunkSize() + MediaPlayer.MEDIA_PLAYER_OPTION_UPDATE_TIMESTAMP_MODE + this.keyStrings.getChunkSize() + this.typeSpecChunk.getChunkSizeWithTypeChunk();
        }

        void writeTo(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            this.header.writeTo(byteArrayOutputStream);
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(this.packageInfo.f19671id));
            char[] charArray = this.packageInfo.name.toCharArray();
            for (int i10 = 0; i10 < 128; i10++) {
                if (i10 < charArray.length) {
                    byteArrayOutputStream.write(ColorResourcesTableCreator.charToByteArray(charArray[i10]));
                } else {
                    byteArrayOutputStream.write(ColorResourcesTableCreator.charToByteArray((char) 0));
                }
            }
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(MediaPlayer.MEDIA_PLAYER_OPTION_UPDATE_TIMESTAMP_MODE));
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(0));
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(this.typeStrings.getChunkSize() + MediaPlayer.MEDIA_PLAYER_OPTION_UPDATE_TIMESTAMP_MODE));
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(0));
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(0));
            this.typeStrings.writeTo(byteArrayOutputStream);
            this.keyStrings.writeTo(byteArrayOutputStream);
            this.typeSpecChunk.writeTo(byteArrayOutputStream);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class PackageInfo {

        /* renamed from: id  reason: collision with root package name */
        private final int f19671id;
        private final String name;

        PackageInfo(int i10, String str) {
            this.f19671id = i10;
            this.name = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class ResChunkHeader {
        private final int chunkSize;
        private final short headerSize;
        private final short type;

        ResChunkHeader(short s10, short s11, int i10) {
            this.type = s10;
            this.headerSize = s11;
            this.chunkSize = i10;
        }

        void writeTo(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            byteArrayOutputStream.write(ColorResourcesTableCreator.shortToByteArray(this.type));
            byteArrayOutputStream.write(ColorResourcesTableCreator.shortToByteArray(this.headerSize));
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(this.chunkSize));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class ResEntry {
        private static final byte DATA_TYPE_AARRGGBB = 28;
        private static final short ENTRY_SIZE = 8;
        private static final short FLAG_PUBLIC = 2;
        private static final int SIZE = 16;
        private static final short VALUE_SIZE = 8;
        private final int data;
        private final int keyStringIndex;

        ResEntry(int i10, @ColorInt int i11) {
            this.keyStringIndex = i10;
            this.data = i11;
        }

        void writeTo(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            byteArrayOutputStream.write(ColorResourcesTableCreator.shortToByteArray((short) 8));
            byteArrayOutputStream.write(ColorResourcesTableCreator.shortToByteArray((short) 2));
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(this.keyStringIndex));
            byteArrayOutputStream.write(ColorResourcesTableCreator.shortToByteArray((short) 8));
            byteArrayOutputStream.write(new byte[]{0, DATA_TYPE_AARRGGBB});
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(this.data));
        }
    }

    /* loaded from: classes5.dex */
    private static class ResTable {
        private static final short HEADER_SIZE = 12;
        private final ResChunkHeader header;
        private final int packageCount;
        private final List<PackageChunk> packageChunks = new ArrayList();
        private final StringPoolChunk stringPool = new StringPoolChunk(new String[0]);

        ResTable(Map<PackageInfo, List<ColorResource>> map) {
            this.packageCount = map.size();
            for (Map.Entry<PackageInfo, List<ColorResource>> entry : map.entrySet()) {
                List<ColorResource> value = entry.getValue();
                Collections.sort(value, ColorResourcesTableCreator.COLOR_RESOURCE_COMPARATOR);
                this.packageChunks.add(new PackageChunk(entry.getKey(), value));
            }
            this.header = new ResChunkHeader((short) 2, (short) 12, getOverallSize());
        }

        private int getOverallSize() {
            int i10 = 0;
            for (PackageChunk packageChunk : this.packageChunks) {
                i10 += packageChunk.getChunkSize();
            }
            return this.stringPool.getChunkSize() + 12 + i10;
        }

        void writeTo(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            this.header.writeTo(byteArrayOutputStream);
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(this.packageCount));
            this.stringPool.writeTo(byteArrayOutputStream);
            for (PackageChunk packageChunk : this.packageChunks) {
                packageChunk.writeTo(byteArrayOutputStream);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class StringPoolChunk {
        private static final int FLAG_UTF8 = 256;
        private static final short HEADER_SIZE = 28;
        private static final int STYLED_SPAN_LIST_END = -1;
        private final int chunkSize;
        private final ResChunkHeader header;
        private final int stringCount;
        private final List<Integer> stringIndex;
        private final List<byte[]> strings;
        private final int stringsPaddingSize;
        private final int stringsStart;
        private final int styledSpanCount;
        private final List<Integer> styledSpanIndex;
        private final List<List<StringStyledSpan>> styledSpans;
        private final int styledSpansStart;
        private final boolean utf8Encode;

        StringPoolChunk(String... strArr) {
            this(false, strArr);
        }

        private Pair<byte[], List<StringStyledSpan>> processString(String str) {
            return new Pair<>(this.utf8Encode ? ColorResourcesTableCreator.stringToByteArrayUtf8(str) : ColorResourcesTableCreator.stringToByteArray(str), Collections.emptyList());
        }

        int getChunkSize() {
            return this.chunkSize;
        }

        void writeTo(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            int i10;
            this.header.writeTo(byteArrayOutputStream);
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(this.stringCount));
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(this.styledSpanCount));
            if (this.utf8Encode) {
                i10 = 256;
            } else {
                i10 = 0;
            }
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(i10));
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(this.stringsStart));
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(this.styledSpansStart));
            for (Integer num : this.stringIndex) {
                byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(num.intValue()));
            }
            for (Integer num2 : this.styledSpanIndex) {
                byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(num2.intValue()));
            }
            for (byte[] bArr : this.strings) {
                byteArrayOutputStream.write(bArr);
            }
            int i11 = this.stringsPaddingSize;
            if (i11 > 0) {
                byteArrayOutputStream.write(new byte[i11]);
            }
            for (List<StringStyledSpan> list : this.styledSpans) {
                for (StringStyledSpan stringStyledSpan : list) {
                    stringStyledSpan.writeTo(byteArrayOutputStream);
                }
                byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(-1));
            }
        }

        StringPoolChunk(boolean z10, String... strArr) {
            this.stringIndex = new ArrayList();
            this.styledSpanIndex = new ArrayList();
            this.strings = new ArrayList();
            this.styledSpans = new ArrayList();
            this.utf8Encode = z10;
            int i10 = 0;
            for (String str : strArr) {
                Pair<byte[], List<StringStyledSpan>> processString = processString(str);
                this.stringIndex.add(Integer.valueOf(i10));
                Object obj = processString.first;
                i10 += ((byte[]) obj).length;
                this.strings.add((byte[]) obj);
                this.styledSpans.add((List) processString.second);
            }
            int i11 = 0;
            for (List<StringStyledSpan> list : this.styledSpans) {
                for (StringStyledSpan stringStyledSpan : list) {
                    this.stringIndex.add(Integer.valueOf(i10));
                    i10 += stringStyledSpan.styleString.length;
                    this.strings.add(stringStyledSpan.styleString);
                }
                this.styledSpanIndex.add(Integer.valueOf(i11));
                i11 += (list.size() * 12) + 4;
            }
            int i12 = i10 % 4;
            int i13 = i12 == 0 ? 0 : 4 - i12;
            this.stringsPaddingSize = i13;
            int size = this.strings.size();
            this.stringCount = size;
            this.styledSpanCount = this.strings.size() - strArr.length;
            boolean z11 = this.strings.size() - strArr.length > 0;
            if (!z11) {
                this.styledSpanIndex.clear();
                this.styledSpans.clear();
            }
            int size2 = (size * 4) + 28 + (this.styledSpanIndex.size() * 4);
            this.stringsStart = size2;
            int i14 = i10 + i13;
            this.styledSpansStart = z11 ? size2 + i14 : 0;
            int i15 = size2 + i14 + (z11 ? i11 : 0);
            this.chunkSize = i15;
            this.header = new ResChunkHeader((short) 1, HEADER_SIZE, i15);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class StringStyledSpan {
        private int firstCharacterIndex;
        private int lastCharacterIndex;
        private int nameReference;
        private byte[] styleString;

        private StringStyledSpan() {
        }

        void writeTo(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(this.nameReference));
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(this.firstCharacterIndex));
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(this.lastCharacterIndex));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class TypeChunk {
        private static final byte CONFIG_SIZE = 64;
        private static final short HEADER_SIZE = 84;
        private static final int OFFSET_NO_ENTRY = -1;
        private final byte[] config;
        private final int entryCount;
        private final ResChunkHeader header;
        private final int[] offsetTable;
        private final ResEntry[] resEntries;

        TypeChunk(List<ColorResource> list, Set<Short> set, int i10) {
            byte[] bArr = new byte[64];
            this.config = bArr;
            this.entryCount = i10;
            bArr[0] = CONFIG_SIZE;
            this.resEntries = new ResEntry[list.size()];
            for (int i11 = 0; i11 < list.size(); i11++) {
                this.resEntries[i11] = new ResEntry(i11, list.get(i11).value);
            }
            this.offsetTable = new int[i10];
            int i12 = 0;
            for (short s10 = 0; s10 < i10; s10 = (short) (s10 + 1)) {
                if (set.contains(Short.valueOf(s10))) {
                    this.offsetTable[s10] = i12;
                    i12 += 16;
                } else {
                    this.offsetTable[s10] = -1;
                }
            }
            this.header = new ResChunkHeader(ColorResourcesTableCreator.HEADER_TYPE_TYPE, HEADER_SIZE, getChunkSize());
        }

        private int getEntryStart() {
            return getOffsetTableSize() + 84;
        }

        private int getOffsetTableSize() {
            return this.offsetTable.length * 4;
        }

        int getChunkSize() {
            return getEntryStart() + (this.resEntries.length * 16);
        }

        void writeTo(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            this.header.writeTo(byteArrayOutputStream);
            byteArrayOutputStream.write(new byte[]{ColorResourcesTableCreator.typeIdColor, 0, 0, 0});
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(this.entryCount));
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(getEntryStart()));
            byteArrayOutputStream.write(this.config);
            for (int i10 : this.offsetTable) {
                byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(i10));
            }
            for (ResEntry resEntry : this.resEntries) {
                resEntry.writeTo(byteArrayOutputStream);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class TypeSpecChunk {
        private static final short HEADER_SIZE = 16;
        private static final int SPEC_PUBLIC = 1073741824;
        private final int entryCount;
        private final int[] entryFlags;
        private final ResChunkHeader header;
        private final TypeChunk typeChunk;

        TypeSpecChunk(List<ColorResource> list) {
            this.entryCount = list.get(list.size() - 1).entryId + 1;
            HashSet hashSet = new HashSet();
            for (ColorResource colorResource : list) {
                hashSet.add(Short.valueOf(colorResource.entryId));
            }
            this.entryFlags = new int[this.entryCount];
            for (short s10 = 0; s10 < this.entryCount; s10 = (short) (s10 + 1)) {
                if (hashSet.contains(Short.valueOf(s10))) {
                    this.entryFlags[s10] = 1073741824;
                }
            }
            this.header = new ResChunkHeader(ColorResourcesTableCreator.HEADER_TYPE_TYPE_SPEC, (short) 16, getChunkSize());
            this.typeChunk = new TypeChunk(list, hashSet, this.entryCount);
        }

        private int getChunkSize() {
            return (this.entryCount * 4) + 16;
        }

        int getChunkSizeWithTypeChunk() {
            return getChunkSize() + this.typeChunk.getChunkSize();
        }

        void writeTo(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            this.header.writeTo(byteArrayOutputStream);
            byteArrayOutputStream.write(new byte[]{ColorResourcesTableCreator.typeIdColor, 0, 0, 0});
            byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(this.entryCount));
            for (int i10 : this.entryFlags) {
                byteArrayOutputStream.write(ColorResourcesTableCreator.intToByteArray(i10));
            }
            this.typeChunk.writeTo(byteArrayOutputStream);
        }
    }

    private ColorResourcesTableCreator() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] charToByteArray(char c10) {
        return new byte[]{(byte) (c10 & 255), (byte) ((c10 >> '\b') & 255)};
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] create(Context context, Map<Integer, Integer> map) throws IOException {
        PackageInfo packageInfo;
        if (!map.entrySet().isEmpty()) {
            PackageInfo packageInfo2 = new PackageInfo(127, context.getPackageName());
            HashMap hashMap = new HashMap();
            ColorResource colorResource = null;
            for (Map.Entry<Integer, Integer> entry : map.entrySet()) {
                ColorResource colorResource2 = new ColorResource(entry.getKey().intValue(), context.getResources().getResourceName(entry.getKey().intValue()), entry.getValue().intValue());
                if (context.getResources().getResourceTypeName(entry.getKey().intValue()).equals("color")) {
                    if (colorResource2.packageId == 1) {
                        packageInfo = ANDROID_PACKAGE_INFO;
                    } else if (colorResource2.packageId == Byte.MAX_VALUE) {
                        packageInfo = packageInfo2;
                    } else {
                        throw new IllegalArgumentException("Not supported with unknown package id: " + ((int) colorResource2.packageId));
                    }
                    if (!hashMap.containsKey(packageInfo)) {
                        hashMap.put(packageInfo, new ArrayList());
                    }
                    ((List) hashMap.get(packageInfo)).add(colorResource2);
                    colorResource = colorResource2;
                } else {
                    throw new IllegalArgumentException("Non color resource found: name=" + colorResource2.name + ", typeId=" + Integer.toHexString(colorResource2.typeId & AdConfig.NETWORK_LOAD_LIMIT_DISABLED));
                }
            }
            byte b10 = colorResource.typeId;
            typeIdColor = b10;
            if (b10 != 0) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                new ResTable(hashMap).writeTo(byteArrayOutputStream);
                return byteArrayOutputStream.toByteArray();
            }
            throw new IllegalArgumentException("No color resources found for harmonization.");
        }
        throw new IllegalArgumentException("No color resources provided for harmonization.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] intToByteArray(int i10) {
        return new byte[]{(byte) (i10 & 255), (byte) ((i10 >> 8) & 255), (byte) ((i10 >> 16) & 255), (byte) ((i10 >> 24) & 255)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] shortToByteArray(short s10) {
        return new byte[]{(byte) (s10 & 255), (byte) ((s10 >> 8) & 255)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] stringToByteArray(String str) {
        char[] charArray = str.toCharArray();
        int length = charArray.length * 2;
        byte[] bArr = new byte[length + 4];
        byte[] shortToByteArray = shortToByteArray((short) charArray.length);
        bArr[0] = shortToByteArray[0];
        bArr[1] = shortToByteArray[1];
        for (int i10 = 0; i10 < charArray.length; i10++) {
            byte[] charToByteArray = charToByteArray(charArray[i10]);
            int i11 = i10 * 2;
            bArr[i11 + 2] = charToByteArray[0];
            bArr[i11 + 3] = charToByteArray[1];
        }
        bArr[length + 2] = 0;
        bArr[length + 3] = 0;
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] stringToByteArrayUtf8(String str) {
        byte[] bytes = str.getBytes(Charset.forName("UTF-8"));
        byte length = (byte) bytes.length;
        int length2 = bytes.length;
        byte[] bArr = new byte[length2 + 3];
        System.arraycopy(bytes, 0, bArr, 2, length);
        bArr[1] = length;
        bArr[0] = length;
        bArr[length2 + 2] = 0;
        return bArr;
    }
}
