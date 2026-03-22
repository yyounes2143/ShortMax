package com.ss.texturerender.fov;

import android.util.Pair;
import java.util.LinkedList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class TileInfo {
    int backgroundTileHeightCount;
    int backgroundTileWidthCount;
    int dstTileHeightCount;
    int dstTileWidthCount;
    LinkedList<Pair<Integer, Integer>> mappedBackgroundIndexPairs;
    LinkedList<Pair<Integer, Integer>> mappedOverlayIndexPairs;
    float normalizedBackgroundTileHeight;
    float normalizedBackgroundTileWidth;
    float normalizedDstTileHeight;
    float normalizedDstTileWidth;
    float normalizedSrcTileHeight;
    float normalizedSrcTileWidth;
    public int paddingY;
    int srcTileHeightCount;
    int srcTileWidthCount;
    int streamIndex;
    int tileHeight;
    int tileWidth;
    JSONArray visibleArray;

    public static TileInfo create(String str) {
        if (str != null && !str.isEmpty()) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                TileInfo tileInfo = new TileInfo();
                tileInfo.streamIndex = jSONObject.getInt("stream_index");
                tileInfo.tileWidth = jSONObject.getInt("tile_width");
                tileInfo.tileHeight = jSONObject.getInt("tile_height");
                tileInfo.srcTileWidthCount = jSONObject.getInt("tile_width_count");
                int i10 = jSONObject.getInt("tile_height_count");
                tileInfo.srcTileHeightCount = i10;
                tileInfo.normalizedSrcTileWidth = 1.0f / tileInfo.srcTileWidthCount;
                tileInfo.normalizedSrcTileHeight = 1.0f / i10;
                tileInfo.dstTileWidthCount = jSONObject.getInt("source_tile_width_count");
                int i11 = jSONObject.getInt("source_tile_height_count");
                tileInfo.dstTileHeightCount = i11;
                tileInfo.normalizedDstTileWidth = 1.0f / tileInfo.dstTileWidthCount;
                tileInfo.normalizedDstTileHeight = 1.0f / i11;
                tileInfo.visibleArray = jSONObject.getJSONArray("tile_visible");
                tileInfo.backgroundTileWidthCount = jSONObject.getInt("bg_tile_width_count");
                int i12 = jSONObject.getInt("bg_tile_height_count");
                tileInfo.backgroundTileHeightCount = i12;
                tileInfo.normalizedBackgroundTileWidth = 1.0f / tileInfo.backgroundTileWidthCount;
                tileInfo.normalizedBackgroundTileHeight = 1.0f / i12;
                tileInfo.paddingY = tileInfo.tileHeight % tileInfo.tileWidth;
                LinkedList<Pair<Integer, Integer>> linkedList = new LinkedList<>();
                LinkedList<Pair<Integer, Integer>> linkedList2 = new LinkedList<>();
                int i13 = tileInfo.backgroundTileWidthCount * tileInfo.backgroundTileHeightCount;
                for (int i14 = 0; i14 < tileInfo.visibleArray.length(); i14++) {
                    int i15 = tileInfo.visibleArray.getInt(i14);
                    if (i15 >= 0) {
                        if (i14 < i13) {
                            linkedList.add(new Pair<>(Integer.valueOf(i14), Integer.valueOf(i15)));
                        } else {
                            linkedList2.add(new Pair<>(Integer.valueOf(i14), Integer.valueOf(i15 - i13)));
                        }
                    }
                }
                tileInfo.mappedBackgroundIndexPairs = linkedList;
                tileInfo.mappedOverlayIndexPairs = linkedList2;
                return tileInfo;
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    public int getBackgroundTexHeight() {
        return this.tileHeight * this.backgroundTileHeightCount;
    }

    public int getBackgroundTexWidth() {
        return this.tileWidth * this.backgroundTileWidthCount;
    }

    public int getDecodedFrameHeight() {
        return this.tileHeight * this.srcTileHeightCount;
    }

    public int getDecodedFrameWidth() {
        return this.tileWidth * this.srcTileWidthCount;
    }

    public boolean is3DInput() {
        if (this.tileHeight >= this.tileWidth * 2) {
            return true;
        }
        return false;
    }
}
